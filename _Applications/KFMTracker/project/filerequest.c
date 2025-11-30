#include "main.h"
#include "trackerui.h"
#include "font.h"
#include "filerequest.h"

FileEntry   fileList[MAX_FILES_LISTED];
FileEntry   fileRequest[MAX_FILES_LISTED];    // this is where the files are meant to be sorted so its just a long list
FILINFO     finfo;
uint32_t    fileScrollOffset=0;
uint16_t    filesCounted=0;
int16_t     highlighted_selection = 0;
int16_t     itemSelected = 0;
uint8_t     bLoadSave   = 0;

uint8_t     iFilesPerView   = 4;
uint16_t    iViewPortHeight = 68; // iFilesPerView * 17(pixels)

char fileNameString[FILENAME_STRINGLEN];    // this is where the file name string is stored
char directorySelect[FILENAME_STRINGLEN];
bool_t bDirectoryHit = 0;   // is the selection a directory?
uint8_t fileNameStringIndex = 0;    // editable array index

// some prototypes;
void ShowFilesListed();

/// YEET THE CODE!!


int compare_entries(const void *a, const void *b) {
    const FileEntry *fa = (const FileEntry *)a;
    const FileEntry *fb = (const FileEntry *)b;

    int isDirA = (fa->attrib & AM_DIR) != 0;
    int isDirB = (fb->attrib & AM_DIR) != 0;

    if (isDirA != isDirB)
        return isDirB - isDirA;

    return strcasecmp(fa->name, fb->name);
}

void ScrollFileListDirection(int8_t direction){
    int newOffset = fileScrollOffset;
    int viewPortSize;
    newOffset += direction;


    viewPortSize = filesCounted - iFilesPerView;
    if(viewPortSize < 0) viewPortSize = 0;

    if((newOffset < 0)) 
        newOffset = 0;
    if((newOffset > viewPortSize))
        newOffset = viewPortSize;


    fileScrollOffset = newOffset;
    highlighted_selection = -1;
    itemSelected = -1;
    bDirectoryHit = 0;

    ShowFilesListed();
}

void FileListedSelect(int16_t mx, int16_t my){
    uint8_t dirCheck;   // single char, make sure its not a '['
    //SBGfxRectF(6,  60, 447, 131);
    if( (mx > 6) && (mx < 447) && (my > 60) && (my < (60+iViewPortHeight)) ){
        highlighted_selection = ((my - 60) / 17);
        itemSelected = highlighted_selection + fileScrollOffset;
        FileRequestFileStringUpdater();
    } //else {
        //highlighted_selection = -1;

    if(bLoadSave == FILEREQUEST_MODE_SAVE){ // this needs to work different, since there is an area for TEXTABLE INPUT from the keyboard!
        if( (mx > 6) && (mx < 447) && (my > (60+51)) && (my < (60+74)) ){
            highlighted_selection = -1;
            itemSelected = -2;  // itemSelect needs to be OFF so the OK button chooses the file name string
            flush_keys();
            dbug("File String name select\n");
        }
    }
    
    //dbug("itemSelect:%ld\n", itemSelected);
    ShowFilesListed();
}

void FileRequestFileStringUpdater(){
    if(bLoadSave == FILEREQUEST_MODE_SAVE){
        CaptureDrawBuffer();
        SetDrawToBackLayer();
        
        SBGfxDColour = GUIColourBlack;
        SBGfxBGColour = GUIColourFace;
        SBGfxDrawTextDBB(10, 118, "______________________________________________________");    // clear text area
        SBGfxDrawTextDBB(10, 118, fileNameString);

        // if the filestring area is selected
        if((itemSelected == -2)){   // file string selected. so BLOB the current array index
            if((cursorBlinkStat))
                SBGfxDrawTextFGF(10 + (fileNameStringIndex * 8), 118, "\x16");
            else
                SBGfxDrawTextFGF(10 + (fileNameStringIndex * 8), 118, " ");
        }

        ReleaseDrawBuffer();
    }
}

void FileRequestFileStringInjector(uint8_t keyin){
    //dbug("key in :%u = %c\n", fileNameStringIndex, keyin);

    if((itemSelected == -2)){   // file string selected. so BLOB the current array index
        
        if(keyin == 0x08){ // back space process
            if(fileNameStringIndex > 0) fileNameStringIndex--;
            fileNameString[fileNameStringIndex] = '\0';
            
        } else {
            fileNameString[fileNameStringIndex] = keyin;
            fileNameStringIndex++;
        }
            
    }

    /*
    for(int i=0; i< 32; i++)
        dbug("%02x", (char)fileNameString[i]);

    dbug(" < \r\n");
    */
}

void ShowFilesListed(){
    uint32_t dindex;
    uint8_t soffset, ioffset, khl;
    char fileStringTmp[128];

    dindex = 0;
    // list directories first.
    for (int i = 0; i < filesCounted; i++) {
        if (fileList[i].attrib & AM_DIR) {
            //API->sys.printf("    DIR [%s]\r\n", fileList[i].name);
            //fileRequest[dindex].
            if(dindex < MAX_FILES_LISTED){
                soffset = strlen(fileList[i].name);
                memcpy(&fileRequest[dindex], &fileList[i], sizeof(FileEntry));

                for(ioffset = soffset; ioffset > 0; ioffset --){
                    fileRequest[dindex].name[ioffset] = fileRequest[dindex].name[ioffset-1];
                }

                fileRequest[dindex].name[0] = '[';
                fileRequest[dindex].name[soffset+1] = ']';
                fileRequest[dindex].name[soffset+2] = '\0';

                dindex++;
            }
            //dirCount++;
        }
    }

    // list files after
    if(dindex < MAX_FILES_LISTED){
        for (int i = 0; i < filesCounted; i++) {
            if (!(fileList[i].attrib & AM_DIR)) {
                //print_size_k(fileList[i].size);
                //API->sys.printf("%s\r\n", fileList[i].name);
                if(dindex < MAX_FILES_LISTED){
                    memcpy(&fileRequest[dindex], &fileList[i], sizeof(FileEntry));
                    dindex++;
                }
                //fileCount++;
                //totalSize += fileList[i].size;
            }
        }
    }

    CaptureDrawBuffer();
    SetDrawToBackLayer();

    SBGfxDColour = GUIColourBlack;
    if(bLoadSave == FILEREQUEST_MODE_LOAD)
        SBGfxRectF(6,  60, 447, 131);   // file view area black area
    else
        SBGfxRectF(6,  60, 447, 113);   // file view area black area

    khl = (60 + (highlighted_selection * 17));

    if( (highlighted_selection>-1) && (highlighted_selection < iFilesPerView) ){
        SBGfxDColour = 38;
        SBGfxRectF(6,  khl, 447, (khl + 19));


        if((fileRequest[itemSelected].name[0] != '[')){
            // file check time
            for(int idx = 0; idx<FILENAME_STRINGLEN; idx++ )
                fileNameString[idx] = '\0';

            strcpy(fileNameString, fileRequest[itemSelected].name); // selected filename set it as part of the string
            fileNameStringIndex = strlen(fileNameString);

            bDirectoryHit = 0;

        } else {    
            // directory check
            // this is a directory name select, so dont use it as a name, but maybe when using the OK button it will check 
            // for the leading [ and instruct to go to the directory instead of issuing a save/load command!

            for(int idx = 0; idx<FILENAME_STRINGLEN; idx++ )
                directorySelect[idx] = '\0';

            bDirectoryHit = 1;  // is a selected directory
            strcpy(directorySelect, fileRequest[itemSelected].name); // selected filename set it as part of the string
        }
    }

    // time to render file names
    uint8_t floop;

    for(floop = 0; floop < iFilesPerView; floop ++){
        dindex = strlen(&fileRequest[fileScrollOffset + floop].name);
        strcpy(fileStringTmp, &fileRequest[fileScrollOffset + floop].name);
        fileStringTmp[dindex] = '\0';
        fileStringTmp[37] = '\x5';
        fileStringTmp[38] = '\0';    // terminate here since cant display more

        if(fileStringTmp[0] == '[') 
            SBGfxDColour = GUIColourDirectoryText;
        else
            SBGfxDColour = GUIColourFileText;
        
		SBGfxDrawTextFGF(10, 62 + (floop * 17), fileStringTmp);
    }
    ReleaseDrawBuffer();
}

void ShowFileRequest(uint8_t showopenmode){
    char path[128];

    nConfigScreenMode = bShowFileRequest;
    bLoadSave = showopenmode;
    DisableConfigButtons();
    CaptureDrawBuffer();
    SetDrawToBackLayer();
    flush_keys();

    /*
    for(int i = 0; i < FILENAME_STRINGLEN; i ++){
        fileNameString[i] = 0;
        fileNameStringIndex = 0;
    }
    */

    SBGfxDColour = GUIColourFace;
    SBGfxRectF(0, 29, 480, 135);

    fileScrollOffset = 0;   // reset to the top always
    bDirectoryHit = 0;      // no selection
    filesCounted = 0;
    highlighted_selection = -1;
    itemSelected = -1;
    

    memset(fileList, 0x00, sizeof(fileList));
    memset(fileRequest, 0x00, sizeof(fileList));

    //SBGfxDColour = GUIColourBlack;
    //SBGfxRectF(6, 35, 330, 51);
    //uiDrawBeval(4, 33, 328, 18, GUIColourShadow, GUIColourHiLight);

    if(SBAPI->filesys.getcwd(path) == FR_OK){
        if(strlen(path)>37){
            path[37] = '\x5';
            path[38] = '\0';    // terminate here since cant display more
        }
        
        if (API->filesys.opendir(0, path) != FR_OK) {
            uiFileText(8, 35, "<unable to get dir>");
        } else {
            uiFileText(8, 35, path);

            while (filesCounted < MAX_FILES_LISTED) {
                memset(&finfo, 0, sizeof(FILINFO)); //clear file last seen.

                if (API->filesys.readdir(0, &finfo) != 0 || finfo.fname[0] == 0)
                    break;

                if (strcmp(finfo.fname, ".") == 0 || strcmp(finfo.fname, "..") == 0)
                    continue;

                strncpy(fileList[filesCounted].name, finfo.fname, sizeof(fileList[filesCounted].name) - 1);
                fileList[filesCounted].size = finfo.fsize;
                fileList[filesCounted].attrib = finfo.fattrib;
                filesCounted++;
            }
            API->filesys.closedir(0);
            qsort(fileList, filesCounted, sizeof(FileEntry), compare_entries);
        }

    }
    else
        uiFileText(8, 35, "<unable to get dir>");


    if(bLoadSave == FILEREQUEST_MODE_LOAD)
        iFilesPerView = FILELIST_VIEWSIZE_LOAD;
    else
        iFilesPerView = FILELIST_VIEWSIZE_SAVE;


    if(filesCounted>iFilesPerView)
        iViewPortHeight = (17 * iFilesPerView);
    else {  // files are not as many as the view port so need to figure this one out
        iViewPortHeight = (17 * filesCounted-1);

    }
    


    uiDrawBeval(0, 29, 336, 25, GUIColourHiLight, GUIColourShadow);     // title and path bar
    uiDrawBeval(0, 29, 452, 106, GUIColourHiLight, GUIColourShadow);    // file request border area

    if(bLoadSave == FILEREQUEST_MODE_LOAD) {
        uiDrawBeval(4, 58, 444, 73, GUIColourShadow, GUIColourHiLight); // File View Port
    } else {
        uiDrawBeval(4, 58, 444, 55, GUIColourShadow, GUIColourHiLight);// File View Port
    }

    ReleaseDrawBuffer();

    // disable 
    DisableConfigButtons();
    DisableMainWindowButtons();

    CreateButton(BUTTON_CONF_SCR_UP, GLYPH_UP, 454, 29, 24, GLBUTTON_HEIGHT, gbStatEnabled);
    CreateButton(BUTTON_EXIT_CONF, "\nX\n", 454, 56, 24, 4 + (16*3), gbStatEnabled);
    CreateButton(BUTTON_CONF_SCR_DOWN, GLYPH_DOWN, 454, 110, 24, GLBUTTON_HEIGHT, gbStatEnabled);

    CreateButton(BUTTON_FILEREQ_OPEN, "OK", 416, 29, 36, GLBUTTON_HEIGHT, gbStatEnabled);
    CreateButton(BUTTON_FILEREQ_PARENT, "PARENT", 338, 29, 76, GLBUTTON_HEIGHT, gbStatEnabled);


    // render buttonsies
    guiRenderButton(BUTTON_CONF_SCR_UP, 0);
    guiRenderButton(BUTTON_EXIT_CONF, 0);
    guiRenderButton(BUTTON_CONF_SCR_DOWN, 0);

    guiRenderButton(BUTTON_FILEREQ_OPEN, 0);
    guiRenderButton(BUTTON_FILEREQ_PARENT, 0);

    ShowFilesListed();
}

void CloseFileRequest(){
    nConfigScreenMode = bShowConfigNULL;
    DisableConfigButtons();
    ShowDefaultHomeConfigPage();
}

//////////////// FILE SAVE ROUTINES //////////////////////////////
uint8_t CheckDirectorySelect(){
    uint8_t cdDir[FILENAME_STRINGLEN];
    uint8_t cLen, i;
    if(bDirectoryHit){

        cLen = strlen(directorySelect);
        for(i = 0; i < cLen-1; i ++){
            cdDir[i] = directorySelect[i+1];
        }
        cdDir[i] = '\0';
        cdDir[i-1] = '\0';
        
        dbug("directory change = '%s'\r\n", cdDir);
        SBAPI->filesys.changedir(cdDir);
        ShowFileRequest(bLoadSave); //awful AWFUL way of doing this, but its not a recursive so, why not \o/
        return(1);
    }
    return(0);  // not a directory, didnt do anything so pass 0x00
}

void ParentDirectory(){
    SBAPI->filesys.changedir(".."); // lets just hope the OS doesnt dookie all over the floor!
    ShowFileRequest(bLoadSave); //awful AWFUL way of doing this, but its not a recursive so, why not \o/
}

void SaveKMD(){
    // attempt to save the current song and its sampils!! (PILLS) lol i had too much hot air thanks (jul 14th 2025.. damn! hot)

    dbug("Filename to save to: '%s'\n", fileNameString);
    // we'll need to work insome "overwrite confirmations" though

    SaveTestSong(fileNameString);
}

void LoadKMD(){
    // loading the mod file.
    dbug("Filename to load to: '%s'\n", fileNameString);
    LoadTestSong(fileNameString);
}