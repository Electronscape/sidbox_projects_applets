#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <math.h>
#include <stdarg.h>
#include <stdlib.h>
#include "../../../_coreapi_/apis.h"
#include <stddef.h>
#include <string.h>

#define LZRAMSIZE (2048 * 1024)  // 2MB default, change as needed

uint8_t SDRAM[LZRAMSIZE];       // Uncompressed input buffer
uint8_t SDRAMOUT[LZRAMSIZE];    // Compressed output buffer

#define RLEWINDOW_SIZE 4096
#define LOOKAHEAD_SIZE 18
#define MIN_MATCH 3

uint32_t heartbeat = 0;

size_t pack_lzss(const uint8_t* input, size_t input_size, uint8_t* output, size_t output_max) {
    if (output_max < input_size + 4) return 0;

    // Store uncompressed size as 4-byte little endian header
    output[0] = (input_size >> 0) & 0xFF;
    output[1] = (input_size >> 8) & 0xFF;
    output[2] = (input_size >> 16) & 0xFF;
    output[3] = (input_size >> 24) & 0xFF;

    size_t inpos = 0, outpos = 4;
    uint8_t flag = 0;
    int flag_count = 0;
    size_t flag_pos = outpos++;
    
    while (inpos < input_size) {
        size_t match_pos = 0, match_len = 0;
        size_t window_start = (inpos < RLEWINDOW_SIZE) ? 0 : inpos - RLEWINDOW_SIZE;
        size_t max_len = (input_size - inpos < LOOKAHEAD_SIZE) ? input_size - inpos : LOOKAHEAD_SIZE;

        for (size_t j = window_start; j < inpos; j++) {
            size_t k = 0;
            while (k < max_len && input[j + k] == input[inpos + k]) k++;
            if (k > match_len && k >= MIN_MATCH) {
                match_len = k;
                match_pos = j;
                if (match_len == LOOKAHEAD_SIZE) break;
            }
        }

        if (match_len >= MIN_MATCH) {
            if (outpos + 2 > output_max) return 0;
            size_t offset = inpos - match_pos - 1;
            uint16_t pair = (offset << 4) | (match_len - MIN_MATCH);
            output[outpos++] = pair & 0xFF;
            output[outpos++] = pair >> 8;
            flag = (flag >> 1) | 0x80;
            inpos += match_len;
        } else {
            if (outpos + 1 > output_max) return 0;
            output[outpos++] = input[inpos++];
            flag = (flag >> 1);
        }

        flag_count++;
        if (flag_count == 8) {
            output[flag_pos] = flag;
            flag_pos = outpos++;
            flag = 0;
            flag_count = 0;
        }
        heartbeat++;
        if(heartbeat > 512){
            heartbeat=0;
            API->sys.printf(".");
        }
    }

    if (flag_count > 0) {
        flag = flag >> (8 - flag_count);
        output[flag_pos] = flag;
    } else {
        outpos--;
    }

    return outpos;
}

size_t depack_lzss(const uint8_t* input, size_t input_size, uint8_t* output, size_t output_max) {
    if (input_size < 4) return 0;
    size_t decompressed_size =
        input[0] | (input[1] << 8) | (input[2] << 16) | (input[3] << 24);
    if (decompressed_size > output_max) return 0;

    size_t inpos = 4, outpos = 0;
    uint8_t flag = 0;
    int flag_count = 0;

    while (outpos < decompressed_size && inpos < input_size) {
        if (flag_count == 0) {
            flag = input[inpos++];
            flag_count = 8;
        }

        if (flag & 1) {
            if (inpos + 1 >= input_size) return 0;
            uint16_t pair = input[inpos++] | (input[inpos++] << 8);
            size_t offset = pair >> 4;
            size_t length = (pair & 0x0F) + MIN_MATCH;
            if (outpos < offset + 1 || outpos + length > decompressed_size) return 0;
            size_t copy_pos = outpos - offset - 1;
            for (size_t i = 0; i < length; i++) {
                output[outpos++] = output[copy_pos + i];
            }
        } else {
            if (inpos >= input_size) return 0;
            output[outpos++] = input[inpos++];
        }

        flag >>= 1;
        flag_count--;
    }

    return (outpos == decompressed_size) ? outpos : 0;
}

// Compress chunk WITHOUT 4-byte size header (for chunked streaming)
// Returns compressed size, or 0 on failure
int lzss_compress(const uint8_t* input, size_t input_len, uint8_t* output, size_t output_max) {
    if (output_max < input_len + 4) return 0; // Ensure buffer large enough

    // Use pack_lzss to compress with header, then strip header
    size_t full_len = pack_lzss(input, input_len, output, output_max);
    if (full_len <= 4) return 0;

    size_t stripped_len = full_len - 4;
    memmove(output, output + 4, stripped_len);
    return (int)stripped_len;
}

// Decompress chunk WITHOUT 4-byte size header, requires decompressed size as argument
// Returns decompressed size, or 0 on failure
size_t lzss_decompress_chunk(const uint8_t* input, size_t input_len, uint8_t* output, size_t output_max, size_t decompressed_size) {
    if (input_len + 4 > output_max) return 0; // Ensure output buffer big enough

    // Create temp buffer with 4-byte header + compressed chunk data
    uint8_t temp[input_len + 4];
    temp[0] = (decompressed_size >> 0) & 0xFF;
    temp[1] = (decompressed_size >> 8) & 0xFF;
    temp[2] = (decompressed_size >> 16) & 0xFF;
    temp[3] = (decompressed_size >> 24) & 0xFF;

    memcpy(temp + 4, input, input_len);

    return depack_lzss(temp, input_len + 4, output, output_max);
}
