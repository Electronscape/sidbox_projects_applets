#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "../../../_coreapi_/apis.h"

// Assumed LZSS functions, you need to provide these:
// int lzss_compress(const uint8_t *in, int in_len, uint8_t *out, int out_size);
// int lzss_decompress(const uint8_t *in, int in_len, uint8_t *out, int out_size);

#define API ((volatile SidboxAPI *)0x2001F000)
#define MAX_PATH_LEN 128
#define CHUNK_SIZE      (1024 * 16)
#define FILEID_OUT 0
#define FILEID_IN 1

typedef enum {
    MODE_FULL = 0,
    MODE_CHUNK = 1,
    MODE_RAW = 2
} CrunchMode;

CrunchMode g_mode = MODE_FULL; // default

extern uint8_t SDRAM[8192 * 512]; // 8 meg memory area
extern uint8_t SDRAMOUT[8192 * 512];  // our compressed data


static uint8_t input_chunk[CHUNK_SIZE];
static uint8_t compressed_chunk[CHUNK_SIZE * 2];  // Safe upper bound for compressed data
static uint8_t output_chunk[CHUNK_SIZE];

static void strip_trailing_slash(char *path) {
    size_t len = strlen(path);
    if (len > 0 && path[len - 1] == '/') {
        path[len - 1] = 0;
    }
}

int create_archive(int argc, char *argv[]) {
    const char *outname = NULL;
    int outidx = -1;

    for (int i = 2; i < argc - 1; i++) {
        if (strcmp(argv[i], "-out") == 0) {
            outname = argv[i + 1];
            outidx = i;
            break;
        }
    }

    if (!outname) {
        API->sys.printf("Error: Missing -out <filename>\n");
        return 1;
    }

    API->su.adm_setCacheEnabled(0);
    API->sys.printf("Creating archive: %s\n", outname);

    if (API->filesys.open(FILEID_OUT, outname, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
        API->sys.printf("Failed to open archive for writing: %s\n", outname);
        return 1;
    }

    // Write the compression mode to the archive header (1 byte)
    uint8_t mode_byte = (uint8_t)g_mode;
    API->filesys.write(FILEID_OUT, &mode_byte, 1, NULL);

    for (int i = 2; i < outidx; i++) {
        if (argv[i][0] != '+') continue;
        const char *filename = argv[i] + 1;

        FILINFO finfo;
        if (API->filesys.stat(filename, &finfo) != FR_OK || finfo.fsize == 0) {
            API->sys.printf("Cannot stat file or file empty: %s\n", filename);
            continue;
        }

        uint8_t pathlen = strlen(filename);
        uint32_t fsize = finfo.fsize;

        if (g_mode == MODE_RAW) {
            // Raw copy mode: no compression
            if (API->filesys.open(FILEID_IN, filename, FA_READ) != FR_OK) {
                API->sys.printf("Failed to open: %s\n", filename);
                continue;
            }

            // Write header: pathlen, filename, original size, compressed size == original size for raw
            API->filesys.write(FILEID_OUT, &pathlen, 1, NULL);
            API->filesys.write(FILEID_OUT, (void *)filename, pathlen, NULL);
            API->filesys.write(FILEID_OUT, &fsize, 4, NULL);
            API->filesys.write(FILEID_OUT, &fsize, 4, NULL);

            // Stream raw file copy in chunks
            uint32_t remaining = fsize;
            while (remaining > 0) {
                uint32_t to_read = (remaining > CHUNK_SIZE) ? CHUNK_SIZE : remaining;
                uint32_t bread = 0;
                if (API->filesys.read(FILEID_IN, input_chunk, to_read, &bread) != FR_OK || bread == 0) break;
                API->filesys.write(FILEID_OUT, input_chunk, bread, NULL);
                remaining -= bread;
            }

            API->filesys.close(FILEID_IN);

            API->sys.printf("Added raw file: %s (%lu bytes)\n", filename, fsize);
            continue;
        }

        // Load entire file into SDRAM (for full or chunk)
        if (API->filesys.open(FILEID_IN, filename, FA_READ) != FR_OK) {
            API->sys.printf("Failed to open: %s\n", filename);
            continue;
        }
        uint32_t bread = 0;
        if (API->filesys.read(FILEID_IN, SDRAM, fsize, &bread) != FR_OK || bread != fsize) {
            API->sys.printf("Failed to read full file: %s\n", filename);
            API->filesys.close(FILEID_IN);
            continue;
        }
        API->filesys.close(FILEID_IN);

        if (g_mode == MODE_FULL) {
            // Compress whole file in one go
            API->su.adm_setCacheEnabled(1);
            size_t compressed_size = pack_lzss(SDRAM, fsize, SDRAMOUT, sizeof(SDRAMOUT));
            API->su.adm_setCacheEnabled(0);

            if (compressed_size == 0) {
                API->sys.printf("Compression failed for: %s\n", filename);
                continue;
            }

            // Write header: pathlen, filename, original size, compressed size
            API->filesys.write(FILEID_OUT, &pathlen, 1, NULL);
            API->filesys.write(FILEID_OUT, (void *)filename, pathlen, NULL);
            API->filesys.write(FILEID_OUT, &fsize, 4, NULL);
            API->filesys.write(FILEID_OUT, &compressed_size, 4, NULL);

            // Write compressed data
            API->filesys.write(FILEID_OUT, SDRAMOUT, compressed_size, NULL);
            API->sys.printf("Added full compressed file: %s (orig: %lu, comp: %lu)\n", filename, fsize, compressed_size);
        } else if (g_mode == MODE_CHUNK) {
            // Chunked compression mode
            uint32_t num_chunks = (fsize + CHUNK_SIZE - 1) / CHUNK_SIZE;

            // Write header: pathlen, filename, original size, compressed size == 0 to signal chunked?
            API->filesys.write(FILEID_OUT, &pathlen, 1, NULL);
            API->filesys.write(FILEID_OUT, (void *)filename, pathlen, NULL);
            API->filesys.write(FILEID_OUT, &fsize, 4, NULL);
            uint32_t zero = 0;
            API->filesys.write(FILEID_OUT, &zero, 4, NULL);

            // Write chunk count next (4 bytes)
            API->filesys.write(FILEID_OUT, &num_chunks, 4, NULL);

            // Compress and write chunks one by one
            for (uint32_t chunk = 0; chunk < num_chunks; chunk++) {
                uint32_t bytes_to_read = CHUNK_SIZE;
                if ((chunk + 1) * CHUNK_SIZE > fsize)
                    bytes_to_read = fsize - (chunk * CHUNK_SIZE);

                memcpy(input_chunk, SDRAM + chunk * CHUNK_SIZE, bytes_to_read);

                API->su.adm_setCacheEnabled(1);
                int compressed_len = lzss_compress(input_chunk, bytes_to_read, compressed_chunk, sizeof(compressed_chunk));
                API->su.adm_setCacheEnabled(0);

                if (compressed_len <= 0) {
                    API->sys.printf("Chunk compression failed for %s chunk %lu\n", filename, chunk);
                    break;
                }

                API->filesys.write(FILEID_OUT, &compressed_len, 4, NULL);
                API->filesys.write(FILEID_OUT, compressed_chunk, compressed_len, NULL);
            }

            API->sys.printf("Added chunk compressed file: %s (orig: %lu, chunks: %lu)\n", filename, fsize, num_chunks);
        }
    }

    API->filesys.close(FILEID_OUT);
    API->su.adm_setCacheEnabled(1);
    API->sys.printf("Archive created: %s\n", outname);
    return 0;
}

int extract_archive(const char *archive, const char *outdir) {
     if (API->filesys.open(FILEID_IN, archive, FA_READ) != FR_OK) {
        API->sys.printf("Failed to open archive: %s\n", archive);
        return 1;
    }

    // Read compression mode byte from archive header
    uint8_t mode_byte = 0xFF;
    if (API->filesys.read(FILEID_IN, &mode_byte, 1, NULL) != FR_OK) {
        API->sys.printf("Failed to read mode byte from archive header\n");
        API->filesys.close(FILEID_IN);
        return 1;
    }

    if (mode_byte > MODE_RAW) {
        API->sys.printf("Invalid compression mode in archive: %u\n", mode_byte);
        API->filesys.close(FILEID_IN);
        return 1;
    }
    g_mode = (CrunchMode)mode_byte;

    char cleanOutdir[MAX_PATH_LEN];
    strncpy(cleanOutdir, outdir, MAX_PATH_LEN - 1);
    cleanOutdir[MAX_PATH_LEN - 1] = 0;
    strip_trailing_slash(cleanOutdir);

    while (1) {
        uint8_t pathlen;
        if (API->filesys.read(FILEID_IN, &pathlen, 1, NULL) != FR_OK || pathlen == 0 || pathlen > 255)
            break;

        char filepath[MAX_PATH_LEN];
        if (API->filesys.read(FILEID_IN, filepath, pathlen, NULL) != FR_OK)
            break;
        filepath[pathlen] = '\0';

        uint32_t original_size = 0;
        uint32_t compressed_size = 0;

        if (API->filesys.read(FILEID_IN, &original_size, 4, NULL) != FR_OK)
            break;
        if (API->filesys.read(FILEID_IN, &compressed_size, 4, NULL) != FR_OK)
            break;

        // Compose full output path & create directories
        char fullpath[MAX_PATH_LEN];
        snprintf(fullpath, MAX_PATH_LEN, "%s/%s", cleanOutdir, filepath);
        char *p = fullpath;
        while (*p) {
            if (*p == '/') {
                *p = 0;
                API->filesys.mkdir(fullpath);
                *p = '/';
            }
            p++;
        }

        if (g_mode == MODE_RAW) {
            // Just raw data copy
            API->sys.printf("Extracting raw: %s (%lu bytes)\n", fullpath, original_size);

            if (API->filesys.open(FILEID_OUT, fullpath, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
                API->sys.printf("Failed to create: %s\n", fullpath);
                break;
            }

            uint32_t remaining = original_size;
            while (remaining > 0) {
                uint32_t to_read = (remaining > CHUNK_SIZE) ? CHUNK_SIZE : remaining;
                if (API->filesys.read(FILEID_IN, input_chunk, to_read, NULL) != FR_OK)
                    break;

                API->filesys.write(FILEID_OUT, input_chunk, to_read, NULL);
                remaining -= to_read;
            }
            API->filesys.close(FILEID_OUT);
        } else if (g_mode == MODE_FULL) {
            // Full file compressed
            if (API->filesys.read(FILEID_IN, SDRAMOUT, compressed_size, NULL) != FR_OK) {
                API->sys.printf("Failed to read compressed data for %s\n", filepath);
                break;
            }

            size_t decompressed_size = depack_lzss(SDRAMOUT, compressed_size, SDRAM, sizeof(SDRAM));
            if (decompressed_size == 0) {
                API->sys.printf("Decompression failed: %s\n", filepath);
                break;
            }

            API->sys.printf("Extracting full compressed: %s (%lu bytes)\n", fullpath, decompressed_size);

            if (API->filesys.open(FILEID_OUT, fullpath, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
                API->sys.printf("Failed to create: %s\n", fullpath);
                break;
            }

            API->filesys.write(FILEID_OUT, SDRAM, decompressed_size, NULL);
            API->filesys.close(FILEID_OUT);
        } else if (g_mode == MODE_CHUNK) {
            // Chunked compression mode
            uint32_t num_chunks = 0;
            if (API->filesys.read(FILEID_IN, &num_chunks, 4, NULL) != FR_OK) {
                API->sys.printf("Failed to read chunk count for %s\n", filepath);
                break;
            }

            if (API->filesys.open(FILEID_OUT, fullpath, FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {
                API->sys.printf("Failed to create: %s\n", fullpath);
                break;
            }

            for (uint32_t chunk = 0; chunk < num_chunks; chunk++) {
                uint32_t compressed_len = 0;
                if (API->filesys.read(FILEID_IN, &compressed_len, 4, NULL) != FR_OK)
                    break;
                if (compressed_len == 0 || compressed_len > sizeof(compressed_chunk))
                    break;
                if (API->filesys.read(FILEID_IN, compressed_chunk, compressed_len, NULL) != FR_OK)
                    break;

                size_t decompressed_len = depack_lzss(compressed_chunk, compressed_len, output_chunk, sizeof(output_chunk));
                if (decompressed_len == 0) {
                    API->sys.printf("Chunk decompression failed for %s chunk %lu\n", filepath, chunk);
                    break;
                }

                API->filesys.write(FILEID_OUT, output_chunk, decompressed_len, NULL);
            }
            API->filesys.close(FILEID_OUT);
            API->sys.printf("Extracted chunk compressed: %s\n", fullpath);
        }
    }

    API->filesys.close(FILEID_IN);
    API->sys.printf("Extraction complete to: %s\n", cleanOutdir);
    return 0;
}




int main(int argc, char *argv[]) {
    DIVZEROOFF;

    if (argc < 2) {
        API->sys.printf("Usage:\n  crunch +a [-t full|chunk|raw] +file1.ext [+file2.ext....] -out archive.crn\n");
        API->sys.printf("  crunch -a archive.crn /targetdir/\n");
        return 1;
    }

    const char *cmd = argv[1];

    // Default mode
    g_mode = MODE_FULL;

    // Parse mode only if creating archive (+a)
    if (strcmp(cmd, "+a") == 0) {
        for (int i = 2; i < argc; i++) {
            if (strcmp(argv[i], "-t") == 0 && i + 1 < argc) {
                if (strcmp(argv[i + 1], "full") == 0) g_mode = MODE_FULL;
                else if (strcmp(argv[i + 1], "chunk") == 0) g_mode = MODE_CHUNK;
                else if (strcmp(argv[i + 1], "raw") == 0) g_mode = MODE_RAW;
                else {
                    API->sys.printf("Unknown compression mode '%s', defaulting to full.\n", argv[i + 1]);
                    g_mode = MODE_FULL;
                }
                break;
            }
        }
    }

    if (strcmp(cmd, "+a") == 0) {
        if (argc < 4) {
            API->sys.printf("Error: missing files or output archive\n");
            return 1;
        }
        return create_archive(argc, argv);
    } else if (strcmp(cmd, "-a") == 0) {
        if (argc < 4) {
            API->sys.printf("Error: missing archive file or target directory\n");
            return 1;
        }
        return extract_archive(argv[2], argv[3]);
    } else {
        API->sys.printf("Invalid command. Use +a to add files, -a to extract.\n");
        return 1;
    }
}
