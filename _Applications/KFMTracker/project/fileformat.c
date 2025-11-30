#include "main.h"
#include "trackerui.h"
#include "font.h"
#include "filerequest.h"


#include "player.h"
#include "fileformat.h"


// the file structure

tFileContainer KFMFile;
extern tPlayer KFMSong;



void InitFileContainer(){

}

uint32_t temp32;
uint8_t temp8;

int LoadTestSong(uint8_t *filename){
    uint8_t magic[8];
    uint8_t theFilenameString[256];
    uint8_t thePath[128];

    uint32_t br;
    uint16_t patternID, theUpperPattern;   // this will store patterns from 0 to the highest pattern id
    tPattern *patternBank;

    uint16_t sampleID;  // sample loop id :)
    tSampleInfo *sampleBank;
    uint32_t sampleLoadOffset;  // specific to the tracker software
    uint32_t sampleByteDatIndex;
    uint8_t *sample;

    SBAPI->sys.printf("Load KFM Music Module V1.1\n");
    SBAPI->filesys.getcwd(&thePath);
    sprintf(theFilenameString, "%s/%s", thePath, filename);
    dbug("FILENAME TO LOAD: %s\r\n", theFilenameString);


    strcpy(magic, "--------");
    // first load the 8 byte magic test
    //* OPEN FILE READ *//
    fsopen(0, theFilenameString, FA_OPEN_EXISTING | FA_READ);
        fsread(0, magic, 8, &br);

        br = stringcmp(magic, "KFMMODV1", 8);

        dbug("header: %s (%lu)\n", magic, br);
        if(br){
            SBAPI->sys.printf("NOT a KFM Module V1.00, Sod off!\n");
            fsclose(0);
            return 0; // <----------- EXIT IF FILE IS CRAP
        }

        // header confirmed
        // now load the actual header
        // the file header content and config pattern order, etc...
        fsseek(0, 0);  // reset back to the top of the file.
        fsread(0, &KFMFile, sizeof(KFMFile), &br);
            KFMSong.speed = KFMFile.speed;
            KFMSong.tempo = KFMFile.tempo;
            KFMSong.songLength = KFMFile.songLength;    // the song length
            theUpperPattern = KFMFile.highestPatternID;

            for(br = 0; br < KFMSong.songLength; br++)
                KFMSong.songPatternSequence[br] = KFMFile.songPatternSequence[br];
            

        fsread(0, magic, 8, &br);  // read the word "SONGDAT."
            // nothing else here yet, but maybe something

        fsread(0, magic, 8, &br);  // read the word "PATTERNS"
            // this SHOULD be the patterns if not, we need to say mangled file!
            br = stringcmp(magic, "PATTERNS", 8);
            if(br){
                SBAPI->sys.printf("Started out good: but bollocksed up the pattern! Go Away!\n");
                fsclose(0);
                return 0; // <----------- EXIT IF FILE IS CRAP
            }
        
        

        dbug("Highest Patt:%u\n", theUpperPattern);
        dbug("SongLength: %u\n", KFMSong.songLength);

        // read the patterns
        for(patternID = 0; patternID < (theUpperPattern+1); patternID++){
            patternBank = &KFMSong.Patterns[patternID];
            fsread(0, magic, 4,    &br);    // we should see "PATT"
            fsread(0, patternBank, (KFMPATTERNLEN * KFMCHANNELS) * sizeof(tPatternRow),    &br);
        }
        //fsclose(0);
        //return(1);

        
        // loading samples, BUT because this is a tracker we'll need to keep banks of 65k per sample 
        //   to allow for adjusting for sample length or loading other ones so sample pointers will be changed too.
        // SAMPLE INFORMATION 

        fsread(0, magic, 8, &br); // "SAMPINFO"
            for(sampleID = 0; sampleID < KFMMAXSAMPLES; sampleID++){
                sampleBank = &KFMSong.SampleInf[sampleID];
                fsread(0, &sampleBank->sampleOffset, 4, &br);       // sample offset
                fsread(0, &sampleBank->sampleLength, 4, &br);       // sample length
                fsread(0, &sampleBank->sampleFrequency, 4, &br);    // sample frequency
                fsread(0, &sampleBank->sampleLoopFrom, 4, &br);     // sample loop from
                fsread(0, &sampleBank->sampleLoopTo, 4, &br);       // sample loop to
                fsread(0, &sampleBank->sampleLoop, 1, &br);         // sample loop enabled
                fsread(0, &sampleBank->sampleVolume, 1, &br);       // sample volume
                //dbug("Sampe ID:%u = len:%lu\r\n\r\n", sampleID, sampleBank->sampleLength);
            }




        // the most in-efficient way to load samples!!
        fsread(0, magic, 8, &br); // "8BWSAMPS" // the sample data, and we must put them back into points too ;)
            sampleLoadOffset=0;
            
            // before loop:
            sampleLoadOffset = 0;

            for(sampleID = 0; sampleID < KFMMAXSAMPLES; sampleID++){


                fsread(0, magic, 4,    &br);    // we should see "PATT"

                sampleBank = &KFMSong.SampleInf[sampleID];

                // allocate fixed bank per sample (old approach: 0x10000 bytes per sample)
                sampleLoadOffset = (0x10000 * sampleID);

                // ensure we don't go past ram area (optional safety check)
                if(sampleLoadOffset + sampleBank->sampleLength > SAMPLE_RAM_SPACE_SIZE){
                    dbug("Sample %u too large or out of sampleRamSpace bounds!\n", sampleID);
                    break; // or clamp length
                }

                sample = sampleRamSpace + sampleLoadOffset;
                sampleBank->sampleAddr = sample;

                for(sampleByteDatIndex = 0; sampleByteDatIndex < sampleBank->sampleLength; sampleByteDatIndex++){
                    fsread(0, sample, 1, &br);
                    sample++;
                }
            }

            fsread(0, magic, 4,    &br);    // we should see "PATT"

        // the above should now have all the sample data back again



    fsclose(0);

    return(1);
}


void SaveTestSong(uint8_t *filename){
    uint8_t magic[8];
    uint8_t theFilenameString[256];
    uint8_t thePath[128];
    uint32_t br;
    uint16_t patternID, theUpperPattern;   // this will store patterns from 0 to the highest pattern id
    uint16_t sampleID;  // sample loop id :)
    tPattern *patternBank;
    tSampleInfo *sampleBank;
    uint8_t *sampDat;


    SBAPI->sys.printf("SIZE OF: %lu\n", sizeof(KFMFile));
    SBAPI->sys.printf("Save KFM Music Module\n");

    strcpy(KFMFile.songmagic, "KFMMODV1");
    KFMFile.speed = KFMSong.speed;
    KFMFile.tempo = KFMSong.tempo;              
    KFMFile.songLength = KFMSong.songLength;    // the song length

    for(br = 0; br < KFMSong.songLength; br++){
        KFMFile.songPatternSequence[br] = KFMSong.songPatternSequence[br];
        if( KFMSong.songPatternSequence[br] > theUpperPattern)
            theUpperPattern = KFMSong.songPatternSequence[br];
    }

    KFMFile.highestPatternID = theUpperPattern; // the highest PatternID
    // this will then allow patterns to be saved, from 0 to the highest

    dbug("Highest Patt:%lu\n", theUpperPattern);

    SBAPI->filesys.getcwd(&thePath);
    sprintf(theFilenameString, "%s/%s", thePath, filename);
    dbug("FILENAME TO SAVE: %s\r\n", theFilenameString);

    //# file save binary #//
    fsopen(0, theFilenameString, FA_CREATE_ALWAYS|FA_WRITE);
        // the file header
        fswrite(0, &KFMFile, sizeof(KFMFile), &br);    

        // Header
        strcpy(magic, "SONGDAT.");
        fswrite(0, magic, 8, &br);
        // store song dat notations if needed - not implemented yet

        // now for the patterns
        strcpy(magic, "PATTERNS");
        fswrite(0, magic, 8, &br);
            for(patternID = 0; patternID < (theUpperPattern+1); patternID++){
                patternBank = &KFMSong.Patterns[patternID];
                strcpy(magic, "PATT");
                fswrite(0, magic, 4, &br);
                fswrite(0, patternBank, (KFMPATTERNLEN * KFMCHANNELS) * sizeof(tPatternRow), &br);    
            }
    
        // now for samples  // the sample header data
        strcpy(magic, "SAMPINFO");  // magic for sample data
        fswrite(0, magic, 8, &br);  // save magic
            for(sampleID = 0; sampleID < KFMMAXSAMPLES; sampleID++){
                sampleBank = &KFMSong.SampleInf[sampleID];
                fswrite(0, &sampleBank->sampleOffset, 4, &br);       // sample offset
                fswrite(0, &sampleBank->sampleLength, 4, &br);       // sample length
                fswrite(0, &sampleBank->sampleFrequency, 4, &br);    // sample frequency
                fswrite(0, &sampleBank->sampleLoopFrom, 4, &br);     // sample loop from
                fswrite(0, &sampleBank->sampleLoopTo, 4, &br);       // sample loop to
                fswrite(0, &sampleBank->sampleLoop, 1, &br);         // sample loop enabled
                fswrite(0, &sampleBank->sampleVolume, 1, &br);       // sample volume                
            }

        // the samples actual audio data!!
        strcpy(magic, "8BWSAMPS");  // magic for sample data
        fswrite(0, magic, 8, &br);  // save magic
            strcpy(magic, "8BWD");  // magic for sample data
            // go through all the samples in ram and store them on the file now.
            // since we're going to need to know the length of each sample
            for(sampleID = 0; sampleID < KFMMAXSAMPLES; sampleID++){
                sampleBank = &KFMSong.SampleInf[sampleID];
                sampDat = sampleBank->sampleAddr;   // point to the sample data.
                fswrite(0, magic, 4, &br);
                fswrite(0, sampDat, sampleBank->sampleLength, &br);
            }
        strcpy(magic, "SDATEND.");  // magic for sample data
        fswrite(0, magic, 8, &br);  // save magic


    fsclose(0);


}