/*
 * game.c
 *
 *  Created on: Jun 10, 2025
 *      Author: electronscape
 *      FILESAFE TEST
 */


#include "main.h"
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>

//uint *go = SBAPI
#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include "../../../_coreapi_/apis.h"
#include "game.h"


extern int flashBank;

extern uint8_t kbjoystick;
extern uint8_t jpjoystick;

#define FIRETIMERCOOL   15

// explosion particles
#define MAX_EXPLOSION_PARTICLES 100 
#define EXPLOSION_AMOUNT    10
#define EXPLLOSION_TIMER    40

static struct splosions ExplodeParticles[MAX_EXPLOSION_PARTICLES];
static struct stroid rocks[STROIDS_MAX+1];
static struct troidShip theShip;
static struct bonusShip bonusShips;
static struct splosions BonusShipBullet;
static struct shipdeath DeathParts;
static struct bullet Bullet[BULLETCOUNT+1];
static struct flame Flame[FLAMECOUNT+1];

int LEVELID;
static int getReadyBlinky = 0;

int StarFieldOn = 0;
int pressReady = 0	;// this keeps going until hwbutton 1 is pressed (fire 1 or fire 2)
static signed short sf_x3d[sfstars], sf_y3d[sfstars], sf_z3d[sfstars], sf_xs3d[sfstars], sf_ys3d[sfstars];


/////// GAME LOGIC ////////////////
float ship_spx, ship_spy, ship_pos_x, ship_pos_y;
int ship_death_timer, ship_lives;

char stroid_x_alt, stroid_y_alt, stroid_rot_alt;
long newShipBonus;

unsigned long score1;
int gameovertimer;

char bThrusting;
long newLocationTimer;
long BonusShipFireTimer;

int bullets;
int flames;

void newstar(unsigned short d){
	sf_z3d[d] = 150 + (randomi(100));
	sf_x3d[d] = randomi(2000) - 1000;
	sf_y3d[d] = randomi(2000) - 1000;
}

void init_starfield(){
	unsigned short d;

	for(d=0; d != sfstars; d++){
		sf_x3d[d] = 0;
		sf_y3d[d] = 0;
		sf_xs3d[d] = 0;
		sf_ys3d[d] = 0;
		sf_z3d[d]=0;
	}
}







static int isLineHits(int x1, int y1, int x2, int y2,
                      int x3, int y3, int x4, int y4) {
	int dx1 = x2 - x1;
	int dy1 = y2 - y1;
	int dx2 = x4 - x3;
	int dy2 = y4 - y3;

	int denom = dy2 * dx1 - dx2 * dy1;
	if (denom == 0) return 0; // parallel or coincident

	int dx3 = x1 - x3;
	int dy3 = y1 - y3;

	int numA = dx2 * dy3 - dy2 * dx3;
	int numB = dx1 * dy3 - dy1 * dx3;

	// Use fixed-point comparison without division:
	// uA = numA / denom, want 0 <= uA <= 1
	// Instead check: (numA >= 0 && numA <= denom) (taking sign of denom into account)

	if ((denom > 0 && (numA < 0 || numA > denom || numB < 0 || numB > denom)) ||
		(denom < 0 && (numA > 0 || numA < denom || numB > 0 || numB < denom)))
		return 0;

	return 1;
}


static void RenderStarfield(){
	static uint8_t flicker;
    flicker = !flicker;

    for (unsigned short d = 0; d < sfstars; d++) {
        int z = --sf_z3d[d];

        // Reset star if too close
        if (z < 1) {
            newstar(d);
            z = sf_z3d[d];
        }

        int x = sf_x3d[d];
        int y = sf_y3d[d];
        int xs = (x * 32) / z + cx;
        int ys = (y * 32) / z + cy;

        // Off-screen? Recycle
        if ((unsigned)xs >= sf_screenwidth || (unsigned)ys >= sf_screenheight) {
            newstar(d);
            continue;
        }

        // Save projected coordinates (optional, if reused elsewhere)
        sf_xs3d[d] = xs;
        sf_ys3d[d] = ys;

        // Color logic (simple tiered range, fast)
        if (z < 60) {
            SBGfxFGColour = CRTColour_White;
        } else if (z < 145) {
            SBGfxFGColour = CRTColour_Yellow;
        } else if (z < 255 && flicker) {
            SBGfxFGColour = CRTColour_Cyan;
        } else {
            SBGfxFGColour = CRTColour_Black;
        }

        // Draw clipped
        if ((unsigned)xs > 1 && (unsigned)ys > 1)
            drawPixel(xs, ys); // API call
    }
}


void initRock(int age, int startx, int starty){
    int i, pt;
    signed long randim;
    static signed long size;
    static signed char fdsx, fdsy;
    static unsigned long ang;

    for(i=0; i<STROIDS_MAX; i++){
        if(rocks[i].slot == 0) break;    // skip this one as its already a slot used.
    }

    rocks[i].slot = 1;
    rocks[i].age = age;

    if(startx==-1){
        rocks[i].x = rand() % 320;
        if(rand() % 2)
            rocks[i].y = -20;
        else
            rocks[i].y = 260;
    } else {

        rocks[i].x = startx;
        rocks[i].y = starty;

    }
    stroid_x_alt ++;
    if(stroid_x_alt & 2)
        stroid_y_alt ++;



    ang=0;
    for(pt=0; pt<STROIDS_ANGSTEPS; pt++){
        randim = rand();
        switch(age){
            case 0:	// small
                size = ASTEROIDSIZE_SMALL + ((randim % 5));
                
                fdsx = 3 + (rand() % 3);
                fdsy = 3 + (rand() % 3);

                rocks[i].colour = 96 + ((randim %4));//CRTColour_Blue;
                break;

            case 1:	// medium
                size = ASTEROIDSIZE_MEDIUM + (3*(randim % 4));
                fdsx = 2 + (rand() % 3);
                fdsy = 2 + (rand() % 3);
                rocks[i].colour = 112 + ((randim %4));// CRTColour_Green;
                break;

            default: // LARGE
                size = ASTEROIDSIZE_LARGE + (5*(randim % 3));
                fdsx = 1 + (rand() % 3);
                fdsy = 1 + (rand() % 3);
                rocks[i].colour = 128 + ((randim %4));// CRTColour_Red;
                break;
        }

        stroid_rot_alt++;
        if(stroid_rot_alt>3) stroid_rot_alt=0;
        switch(stroid_rot_alt){
            case 0:
                rocks[i].rotd = 1;
                break;
            case 1:
                rocks[i].rotd = -1;
                break;

            case 2:
                rocks[i].rotd = 2;
                break;

            default:
                rocks[i].rotd = -2;
                break;
        }


        if (stroid_x_alt % 2)
            rocks[i].spx = fdsx;
        else
            rocks[i].spx = -fdsx;


        if (stroid_y_alt % 2)
            rocks[i].spy = fdsy;
        else
            rocks[i].spy = -fdsy;

        rocks[i].size = size;
        rocks[i].rots[pt] = ang;
        rocks[i].rotz[pt] = size;
        ang+=STROIDS_ANGLES;
    }
}

char doCheckShipToAsteroidHit(){
	int ast, astpt, stpts;
    int x1, y1, x2, y2, x3, y3, x4, y4;

    for (ast = 0; ast < STROIDS_MAX; ast++) {
        if (rocks[ast].slot == 0) continue;

        x2 = rocks[ast].pts[STROIDS_ANGSTEPS - 1].x;
        y2 = rocks[ast].pts[STROIDS_ANGSTEPS - 1].y;

        for (astpt = 0; astpt < STROIDS_ANGSTEPS; astpt++) {
            x1 = rocks[ast].pts[astpt].x;
            y1 = rocks[ast].pts[astpt].y;

            x4 = theShip.pts[3].x;
            y4 = theShip.pts[3].y;

            for (stpts = 0; stpts < 4; stpts++) {
                x3 = theShip.pts[stpts].x;
                y3 = theShip.pts[stpts].y;

                // Bounding box check to skip isLineHits if edges don't overlap
                int minx1 = (x1 < x2) ? x1 : x2;
                int maxx1 = (x1 > x2) ? x1 : x2;
                int miny1 = (y1 < y2) ? y1 : y2;
                int maxy1 = (y1 > y2) ? y1 : y2;

                int minx2 = (x3 < x4) ? x3 : x4;
                int maxx2 = (x3 > x4) ? x3 : x4;
                int miny2 = (y3 < y4) ? y3 : y4;
                int maxy2 = (y3 > y4) ? y3 : y4;

                if (!(maxx1 < minx2 || minx1 > maxx2 || maxy1 < miny2 || miny1 > maxy2)) {
                    // Only call isLineHits if bounding boxes overlap
                    if (isLineHits(x1, y1, x2, y2, x3, y3, x4, y4)) {
                        return 1;
                    }
                }

                x4 = x3;
                y4 = y3;
            }
            x2 = x1;
            y2 = y1;
        }
    }
    return 0;
}


void doShipLogic(){
	theShip.sx /= 1.01;
	theShip.sy /= 1.01;

	theShip.px += theShip.sx;
	theShip.py += theShip.sy;

	if(theShip.px > 480 + theShip.scale) theShip.px= - theShip.scale;
	if(theShip.py > 320 + theShip.scale) theShip.py= - theShip.scale;

	if(theShip.px < -theShip.scale) theShip.px=480 + theShip.scale;
	if(theShip.py < -theShip.scale) theShip.py=320 + theShip.scale;
}

static void fireBullet(){
    float bssx, bssy, startx, starty, fsx, fsy;
    int i;

    

    SBAPI->snd.channelconfigs->channel_0_LR ^= 1;//AUDIOFLAG_CHANNEL0LR;
    //SBAPI->snd.channelconfigs->reg ^= AUDIOFLAG_CHANNEL0LR;
    PlayChannel(SFX_ID_FIRE);

    bssx = fast_cos(theShip.shipsRotation) * 2.0f;
    bssy = fast_sin(theShip.shipsRotation) * 2.0f;

	startx = fast_cos(theShip.rotPtVal[4]) * theShip.pointsize[4] * theShip.scale;
	starty = fast_sin(theShip.rotPtVal[4]) * theShip.pointsize[4] * theShip.scale;

	fsx = fast_cos(theShip.rotPtVal[4]) * (theShip.pointsize[4] * 1.9f) * theShip.scale;
	fsy = fast_sin(theShip.rotPtVal[4]) * (theShip.pointsize[4] * 1.9f) * theShip.scale;

    for(i=0; i<BULLETCOUNT; i++){
        if(Bullet[i].time==0){
            Bullet[i].time = 50;
            Bullet[i].px = theShip.px + startx;
            Bullet[i].py = theShip.py + starty;

            Bullet[i].lx = theShip.px + fsx;
            Bullet[i].ly = theShip.py + fsy;

            Bullet[i].sx = bssx *2;
            Bullet[i].sy = bssy *2;

            break;
        }
    }
}

void fireFlame() {
	float bssx, bssy;
	int i;
	int dRot;

	dRot = (theShip.shipsRotation - 25) + (rand() % 50);
	dRot %= 360;
	if (dRot < 0) dRot += 360;

	bssx = -fast_cos(dRot) * 2.0f;
	bssy = -fast_sin(dRot) * 2.0f;

	for (i = 0; i < FLAMECOUNT; i++) {
		if (Flame[i].time == 0) {
			Flame[i].time = 30;
			Flame[i].px = theShip.px; //+ startx;
			Flame[i].py = theShip.py;// + starty;

			Flame[i].sx = bssx;
			Flame[i].sy = bssy;

			break;
		}
	}
}


void renderFlames(){
    int i;
    for(i=0; i<FLAMECOUNT; i++){
        if(Flame[i].time>0){
        	Flame[i].time--;
        	Flame[i].px +=Flame[i].sx;
        	Flame[i].py +=Flame[i].sy;

        	Flame[i].sx /= 1.1;
        	Flame[i].sy /= 1.1;

        	if(Bullet[i].time<5)
        		SBGfxFGColour = CRTColour_Red_Bright;// | 0x08);
        	else
        		SBGfxFGColour = CRTColour_Yellow_Bright;// | 0x08);

            drawPixel((int)Flame[i].px, (int)Flame[i].py);//, fcol, bgmem);
        }
    }
}


void turnShip(signed int dir){
    int pt;
    theShip.shipsRotation += dir;
    for(pt=0; pt<5; pt++){
    	theShip.rotPtVal[pt] += dir;

        if(theShip.rotPtVal[pt]>360) theShip.rotPtVal[pt]=0;
        if(theShip.rotPtVal[pt]<0) theShip.rotPtVal[pt]=360;

        if(theShip.shipsRotation>360) theShip.shipsRotation=0;
        if(theShip.shipsRotation<0) theShip.shipsRotation=360;
    }
}

void renderShip() {
	int lastx, lasty, nextx, nexty, rx, ry;
	int pt;

	SBGfxFGColour = CRTColour_White;

	// Wrap index 3 for the starting point
	int angle = theShip.rotPtVal[3] % 360;
	if (angle < 0) angle += 360;

	lastx = fast_cos(angle) * theShip.pointsize[3] * theShip.scale;
	lasty = fast_sin(angle) * theShip.pointsize[3] * theShip.scale;

	rx = theShip.px;
	ry = theShip.py;

	for (pt = 0; pt < 4; pt++) {
		angle = theShip.rotPtVal[pt] % 360;
		if (angle < 0) angle += 360;

		nextx = fast_cos(angle) * theShip.pointsize[pt] * theShip.scale;
		nexty = fast_sin(angle) * theShip.pointsize[pt] * theShip.scale;

		theShip.pts[pt].x = nextx + rx;
		theShip.pts[pt].y = nexty + ry;

		draw_line(lastx + rx, lasty + ry, nextx + rx, nexty + ry);
		lastx = nextx;
		lasty = nexty;
	}
}



static void doExplosionLogic(){
    int i;

    for(i=0; i<MAX_EXPLOSION_PARTICLES; i++){
        if(ExplodeParticles[i].movetim==0) continue;    // already taken up, need to use another one

        ExplodeParticles[i].movetim -= 1;
        if(ExplodeParticles[i].movetim<1) ExplodeParticles[i].movetim=0;
        ExplodeParticles[i].x += ExplodeParticles[i].spx;
        ExplodeParticles[i].y += ExplodeParticles[i].spy;

        if(ExplodeParticles[i].type == 0)
            //setCRTColor(CRTColour_Yellow | 0x08);
        	SBGfxFGColour = CRTColour_Yellow_Bright;// | 0x08);
        else
        	SBGfxFGColour = CRTColour_Cyan_Bright;// | 0x08);
            //setCRTColor(CRTColour_Cyan | 0x08);

        drawPixel((int)ExplodeParticles[i].x, (int)ExplodeParticles[i].y);//, fcol, bgmem);

    }
}


int testShipToShipCollision(){
    int i, stpts, d;
    int x1, y1, x2, y2, x3, y3, x4, y4;

    int bx[8], by[8];


    // Pre-transform bonus ship points to screen space (scaled & positioned)
    for (i = 0; i < 8; i++) {
        float dx = bonusShips.pts[i].x * bonusShips.scale + bonusShips.x;
        float dy = bonusShips.pts[i].y * bonusShips.scale + bonusShips.y;
        bx[i] = (int)(dx);
        by[i] = (int)(dy);
    }

    x2 = bx[7];
    y2 = by[7];

    for (i = 0; i < 8; i++) {
        x1 = bx[i];
        y1 = by[i];

        x4 = theShip.pts[3].x;
        y4 = theShip.pts[3].y;

        for (stpts = 0; stpts < 4; stpts++) {
            x3 = theShip.pts[stpts].x;
            y3 = theShip.pts[stpts].y;

            // Optional: fast bounding box rejection (saves time if not near)
            int minx1 = (x1 < x2) ? x1 : x2;
            int maxx1 = (x1 > x2) ? x1 : x2;
            int miny1 = (y1 < y2) ? y1 : y2;
            int maxy1 = (y1 > y2) ? y1 : y2;
            int minx2 = (x3 < x4) ? x3 : x4;
            int maxx2 = (x3 > x4) ? x3 : x4;
            int miny2 = (y3 < y4) ? y3 : y4;
            int maxy2 = (y3 > y4) ? y3 : y4;

            if (maxx1 < minx2 || minx1 > maxx2 || maxy1 < miny2 || miny1 > maxy2) {
                x4 = x3;
                y4 = y3;
                continue;
            }

            d = isLineHits(x1, y1, x2, y2, x3, y3, x4, y4);
            if (d) return 1;

            x4 = x3;
            y4 = y3;
        }

        x2 = x1;
        y2 = y1;
    }

    return 0;
}


static inline int bboxOverlap(int x1, int y1, int x2, int y2,
                              int x3, int y3, int x4, int y4) {
    int leftA = (x1 < x2) ? x1 : x2;
    int rightA = (x1 > x2) ? x1 : x2;
    int topA = (y1 < y2) ? y1 : y2;
    int bottomA = (y1 > y2) ? y1 : y2;

    int leftB = (x3 < x4) ? x3 : x4;
    int rightB = (x3 > x4) ? x3 : x4;
    int topB = (y3 < y4) ? y3 : y4;
    int bottomB = (y3 > y4) ? y3 : y4;

    if (rightA < leftB) return 0;
    if (rightB < leftA) return 0;
    if (bottomA < topB) return 0;
    if (bottomB < topA) return 0;

    return 1;
}

int testBulletToBonusCollision() {
    int i, stpts;
    int d;

    // Precompute transformed bonusShips polygon points (int) to avoid float overhead in loops
    int bx[8], by[8];
    for (i = 0; i < 8; i++) {
        float tx = bonusShips.pts[i].x * bonusShips.scale + bonusShips.x;
        float ty = bonusShips.pts[i].y * bonusShips.scale + bonusShips.y;
        bx[i] = (int)tx;
        by[i] = (int)ty;
    }

    int x2 = bx[7];
    int y2 = by[7];

    for (i = 0; i < 8; i++) {
        int x1 = bx[i];
        int y1 = by[i];

        for (stpts = 0; stpts < BULLETCOUNT; stpts++) {
            if (Bullet[stpts].time == 0) continue;

            int x3 = Bullet[stpts].px;
            int y3 = Bullet[stpts].py;
            int x4 = Bullet[stpts].lx;
            int y4 = Bullet[stpts].ly;

            // Bounding box check before calling isLineHits
            if (!bboxOverlap(x1, y1, x2, y2, x3, y3, x4, y4)) continue;

            d = isLineHits(x1, y1, x2, y2, x3, y3, x4, y4);
            if (d) {
                Bullet[stpts].time = 0;
                bonusShips.sx *= 1.5f;
                bonusShips.frequency += 1100;
                SetChannelFrequency(SFX_ID_BONUS, bonusShips.frequency);
                return 1;
            }
        }

        x2 = x1;
        y2 = y1;
    }
    return 0;
}



void renderShipLive(int x){
	SBGfxFGColour = 67;
    draw_line(x, 6, x+6, 20);
    draw_line(x, 6, x-6, 20);

    draw_line(x, 14, x-6, 20);
    draw_line(x, 14, x+6, 20);

}

void resetStarBurst(){  // if you die, should stop the starburst happening when respawn
    newLocationTimer = 0;
    theShip.scale = SHIPSIZE;

}

int doAsterGame() {
    char txt[32], txttmp[32];
    static int firetimer = 0;
	static int refiretimer;

    int i;
    //short buttins;
    static int astCount;
    static int flicker=0; 

    flicker++;
    if(flicker>4) flicker=0;
    //if(StarFieldOn)  	RenderStarfield();

    astCount = countStroids();
	if (astCount == 0) {    // all destroyed; // so ready to go to next level :)
		//if (LEVELID == 6)
			//LEVELID = 0;
		LEVELID++;
		for(flicker=0; flicker<(LEVELID/2); flicker++)
			initRock(STROID_SIZE_LARGE, -1, 0);

		SBAPI->music.LoadAndplay("levcomp.mod", AUDIO_MODE_MOD, 0);

		levelTransition = 200;
		getReadyBlinky=0;



		SBAPI->gfx.displaymode(480, 320, 480, 320, DISPFLAG_DUALLAYER);	// the big bitmap is double the height
		*SBAPI->gfx.ActiveBackLayerBuffer = original_backlayerbuffer;

		CLUTAlpha(leveldoneclut32);
		SBGfxPalleteUpdate(clut, 0);	// back ground
		SBAPI->gfx.waitvsync();

		SBGfxPalleteUpdate(clut, 1);	// fore ground
		SBAPI->gfx.waitvsync();

		IMGtoBG(levcompScr);
		SBAPI->gfx.waitvsync();	// wait for the Colour Table to finish DMA transfer
	}


	if (levelTransition > 0) {
		levelTransition--;
		StarFieldOn=0;

		if (levelTransition < 130)
			flicker = 1;

		if (flicker & 3) {
			SBAPI->gfx.setBGViewport(0, 0);

			sprintf(txt, "** LEVEL %u **", LEVELID);
			SBGfxFGColour = 200;

			SBGfxDrawTextFGF(280 - ((strlen(txt) * 8) / 2), 100, txt);

			sprintf(txt, "GET READY!");
			SBGfxFGColour = 255;
			SBGfxDrawTextFGF(280 - ((strlen(txt) * 8) / 2), 200, txt);

			StopChannel(SFX_ID_BONUS);
		}

		ship_death_timer = DEATH_TIME/2;
		theShip.px = 240;
		theShip.py = 160;
		theShip.sx = 0;
		theShip.sy = 0;

		if(!((jpjoystick | kbjoystick) & BTN_FIRE)){	// will stay in this loop
			if(levelTransition < 3){
				levelTransition = 2;
				sprintf(txt, "PRESS FIRE!");
				getReadyBlinky++;
				if(getReadyBlinky< 30){
					SBGfxFGColour = 255;
					SBGfxDrawTextFGF(280 - ((strlen(txt) * 8) / 2), 180, txt);
				}
				if(getReadyBlinky>60)
					getReadyBlinky = 0;
			}
		}

		if(levelTransition == 1){
			levelTransition = 0;	//
			SBAPI->music.LoadAndplay("sdlev1.mod", AUDIO_MODE_MOD, 0);
			SetupGameScreen();
			StarFieldOn=1;
		}
		return (0);
	}

	renderStroids();


    if(ship_death_timer>0) ship_death_timer--;
    if(ship_death_timer<80) {
        newShipBonus--;
        if(newShipBonus<0){
            newShipBonus=1000 + (rand() & 1000);
            createBonus();
        }

        if(ship_lives==0) {
            gameovertimer =300;
            SBAPI->music.LoadAndplay("getready.mod", AUDIO_MODE_MOD, 0);
            return(1);
        }

        refiretimer++;
        if (refiretimer > FIRETIMERCOOL)
            refiretimer = FIRETIMERCOOL;

        if((jpjoystick | kbjoystick) & BTN_FIRE){	// Fire
			if (refiretimer == FIRETIMERCOOL) {
				if (firetimer == 0) {
					refiretimer = 0;
					firetimer = 1;
					fireBullet();
				}
			}
        } else firetimer=0;

		if ((jpjoystick | kbjoystick) & BTN_UP) {	// UP
			fireFlame();
			shipThrust();
			if (bThrusting == 0) {
				bThrusting = 1;
				//play_channel(CHN_THRUST_ID);
				PlayChannel(SFX_ID_THRUST);
			}
		} else {
			if(bThrusting==1){
				bThrusting = 0;
				//stop_channel(CHN_THRUST_ID);
				StopChannel(SFX_ID_THRUST);
			}
		}

		if ((jpjoystick | kbjoystick) & BTN_DOWN) {	// down
			if (newLocationTimer == 0) {
				//play_channel(CHN_HYPERSPACE_ID);
				PlayChannel(SFX_ID_TELEPORT);
			}
			newLocationTimer = 1;
		}
		if ((jpjoystick | kbjoystick) & BTN_LEFT) { // left
        	turnShip(-4);
        }
        if((jpjoystick | kbjoystick) & BTN_RIGHT){ // right
        	turnShip(4);
        }

        if (newLocationTimer == 1) {
			theShip.scale -= 0.4;
			if (theShip.scale < 0) {
				theShip.scale = SHIPSIZE;

				newLocationTimer = 0;
				ship_death_timer = DEATH_TIME/2;

				CreateStarBurst(60, -1, theShip.px, theShip.py);

				theShip.px = 30 + (rand() % 450);
				theShip.py = 30 + (rand() % 260);
			}
		}

        if(ship_death_timer>0){
            if(flicker & 3) renderShip();
        } else {
            // only check ship to astroid hits when ready not when flickering
            renderShip();

            if(doCheckShipToAsteroidHit())
                CreateShipDeath();

            if(testShipToShipCollision())
                CreateShipDeath();


            if(doBonusShipBullet())
            	CreateShipDeath();
        }
        renderFlames();
    }

	if (bonusShips.timer > 0) {
		BonusShipFireTimer++;
		if (BonusShipFireTimer > 40) {
			BonusShipFireTimer = 0;
			CreateBonusShipBullet();
		}
		renderBonusShipLarge();
		renderBonusShipBullet();
	}

    doCheckBulletToAsteroid();

    doExplosionLogic();

    renderBullets();
    doShipLogic();
    if(testBulletToBonusCollision()){
        if(bonusShips.hits>0)
            bonusShips.hits--;
        else {
        	score1 += bonusShips.score;
        	CreateExplosions(50, 2.4, bonusShips.x, bonusShips.y);
            // add an extra live, up to 5 ;)
            ship_lives ++;
            if(ship_lives > 5) ship_lives = 5;
        	StopChannel(SFX_ID_BONUS);
        	PlayChannel(SFX_ID_DEAD);
            PlayChannel(SFX_ID_EXTRALIFE);
            resetBonusShip();
        }
    }
    renderShipDeath();

    SBGfxFGColour = CRTColour_Green;
    sprintf(txttmp, "Score: %lu", score1);
	SBGfxDrawTextFGF(8, 5, txttmp);

	sprintf(txt, "Level: %u", LEVELID);
	SBGfxDrawTextFGF(390, 300, txt);

	SBGfxFGColour = CRTColour_Red;
	sprintf(txttmp, "Lives:");
	SBGfxDrawTextFGF(350, 5, txttmp);
	for(i=0; i<ship_lives; i++)
        renderShipLive(410 + (i*13));

	SBGfxFGColour = CRTColour_Blue;
	sprintf(txt, "Asteroids: %u", astCount);
	SBGfxDrawTextFGF(8, 300, txt);
    return(0);
}





int doGameOverScreen(){
    char txt[64];
    RenderStarfield();

    SBGfxFGColour = CRTColour_White;
	strcpy(txt, "*** GAME OVER! YOU GOT DEAD! ***");
	SBGfxDrawTextFGF(240 -((strlen(txt) * 8)/2), 80, txt);

    SBGfxFGColour = CRTColour_Green;
    sprintf(txt, "Score:");
	SBGfxDrawTextFGF(240 -((strlen(txt) * 8)/2), 240, txt);

	sprintf(txt, "%lu", score1);
	SBGfxDrawTextFGF(240 -((strlen(txt) * 8)/2), 260, txt);

	sprintf(txt, "Level: %u", LEVELID);
	SBGfxDrawTextFGF(240 - ((strlen(txt) * 8)/2), 300, txt);

	StopChannel(SFX_ID_BONUS);

    if(gameovertimer>0)
        gameovertimer--;

    if(gameovertimer==1)
    	initMath();

    return(gameovertimer);
}



void initMath(){
    static unsigned char i;
	score1=0;

    memset(&ExplodeParticles, 0x00, sizeof(ExplodeParticles));
    memset(&rocks, 0x00, sizeof(rocks));
    memset(&theShip, 0x00, sizeof(theShip));
    memset(&Bullet, 0x00, sizeof(Bullet));
    memset(&Flame, 0x00, sizeof(Flame));
    memset(&DeathParts, 0x00, sizeof(DeathParts));

    newLocationTimer=0;

	for(i=0; i<STROIDS_MAX; i++){
        rocks[i].slot = 0;
        rocks[i].movetim = 0;
	}

	// the ship setup
	theShip.px = 240;
	theShip.py = 160;
	theShip.sx = 0;
	theShip.sy = 0;

	theShip.shipsRotation = 0;

	theShip.rotPtVal[0] = 0;
	theShip.pointsize[0] = 1;

	theShip.rotPtVal[1] = 130;
	theShip.pointsize[1] = 1;

	theShip.rotPtVal[2] = 180;
	theShip.pointsize[2] = 0;

	theShip.rotPtVal[3] = 230;
	theShip.pointsize[3] = 1;
	theShip.scale = SHIPSIZE;

	theShip.rotPtVal[4] = 0;
	theShip.pointsize[4] = 1;
	theShip.speed = 0;
	theShip.maxspeed = 0.10;	// 0.20 is base speed

	LEVELID=1;
	ship_lives=3;
	ship_death_timer=0;

	initRock(STROID_SIZE_LARGE, -1, 0);
	newShipBonus = 10;

    resetBonusShip();
    levelTransition=0;
}



////////////
///

int renderStroids(){
	signed long lastx, lasty, nextx, nexty, rx, ry;
	unsigned char i, pt;
	int astCount = 0;

	for (i = 0; i < STROIDS_MAX; i++) {
		if (rocks[i].slot == 0)
			continue;

		astCount++;
		// Wrap-around screen bounds
		if (rocks[i].x < -(6 + rocks[i].size)) rocks[i].x = 486 + rocks[i].size;
		if (rocks[i].x > 486 + rocks[i].size)  rocks[i].x = -rocks[i].size;
		if (rocks[i].y < -(6 + rocks[i].size)) rocks[i].y = 326 + rocks[i].size;
		if (rocks[i].y > 326 + rocks[i].size)   rocks[i].y = -rocks[i].size;

		rocks[i].x += rocks[i].spx / 3;
		rocks[i].y += rocks[i].spy / 3;

		rx = rocks[i].x;
		ry = rocks[i].y;

		// Precompute last point
		int last_angle = rocks[i].rots[STROIDS_ANGSTEPS - 1];
		int last_radius = rocks[i].rotz[STROIDS_ANGSTEPS - 1];

        // turn off if using the drawpoly feature (didnt expect this tow work, but it does!)
		//lastx = fast_cos(last_angle) * last_radius;
		//lasty = fast_sin(last_angle) * last_radius;

		SBGfxFGColour = rocks[i].colour;

        for (pt = 0; pt < STROIDS_ANGSTEPS; pt++) {
			// Rotate
			rocks[i].rots[pt] += rocks[i].rotd;
			if (rocks[i].rots[pt] >= 360) rocks[i].rots[pt] -= 360;
			if (rocks[i].rots[pt] < 0)    rocks[i].rots[pt] += 360;

			int angle = rocks[i].rots[pt];
			int radius = rocks[i].rotz[pt];

			nextx = fast_cos(angle) * radius;
			nexty = fast_sin(angle) * radius;

			rocks[i].pts[pt].x = nextx + rx;
			rocks[i].pts[pt].y = nexty + ry;

			//draw_line(lastx + rx, lasty + ry, nextx + rx, nexty + ry);
			//lastx = nextx;
			//lasty = nexty;
		}
        SBAPI->gfx.drawpoly(rocks[i].pts, STROIDS_ANGSTEPS, 1, 1, 0);
	}
	return astCount;
}

int countStroids(){
	int i, astCount;
	astCount=0;
	for (i = 0; i < STROIDS_MAX; i++)  {
        if(rocks[i].slot == 0) continue;
        astCount++;
	}
	return(astCount);
}

void createBonus(){
    if(rand() % 2){
        bonusShips.x = 500;
        bonusShips.sx = -0.5;

    } else {
        bonusShips.x = -20;
        bonusShips.sx = 0.5;
    }

    if(rand() % 2){
        bonusShips.y = 10;
        bonusShips.sy = 0.3;
    } else {
        bonusShips.y = 320;
        bonusShips.sy = -0.3;
    }

    if(rand() % 2){
    	// large
    	bonusShips.frequency = 44100;

        bonusShips.scale = 24.0;
        bonusShips.score = 200;
    } else {
    	// small
    	bonusShips.frequency = 66100;
    	bonusShips.scale = 12.0;
        bonusShips.score = 400;
    }

    PlayChannel(SFX_ID_BONUS);
    SetChannelFrequency(SFX_ID_BONUS, bonusShips.frequency);

    bonusShips.timer = 1145;
    bonusShips.hits = 3;

    bonusShips.pts[0].x = -0.25;
    bonusShips.pts[0].y = 0.00;

    bonusShips.pts[1].x = 0.25;
    bonusShips.pts[1].y = 0.00;

    bonusShips.pts[2].x = 0.40;
    bonusShips.pts[2].y = 0.25;

    bonusShips.pts[3].x = 1.00;
    bonusShips.pts[3].y = 0.45;

    bonusShips.pts[4].x = 0.40;
    bonusShips.pts[4].y = 0.65;

    bonusShips.pts[5].x = -0.40;
    bonusShips.pts[5].y = 0.66;

    bonusShips.pts[6].x = -1.00;
    bonusShips.pts[6].y = 0.45;

    bonusShips.pts[7].x = -0.40;
    bonusShips.pts[7].y = 0.25;
}


void CreateBonusShipBullet(){
	int lAng;
	lAng = rand() % 360;
	BonusShipBullet.spx = fast_cos(lAng) * 3.0;
    BonusShipBullet.spy = fast_sin(lAng) * 3.0;

    BonusShipBullet.movetim = 50;
	BonusShipBullet.x = bonusShips.x;
	BonusShipBullet.y = bonusShips.y;
}


void CreateExplosions(int size, int power, int x, int y){
    int i;

    for(i=0; i<MAX_EXPLOSION_PARTICLES; i++){
        if(ExplodeParticles[i].movetim!=0) continue;    // already taken up, need to use another one

        if(size){
            ExplodeParticles[i].movetim = EXPLLOSION_TIMER + randomi(20);
            ExplodeParticles[i].type = 0;
            ExplodeParticles[i].x = x;
            ExplodeParticles[i].y = y;

            if(rand()% 2)
                ExplodeParticles[i].spx = 1.0 * power;
            else
                ExplodeParticles[i].spx = -1.0 * power;

            if(rand()% 2)
                ExplodeParticles[i].spy = 1.0 * power;
            else
                ExplodeParticles[i].spy = -1.0 * power;

            ExplodeParticles[i].spy *= ((float)(rand() % 20)/20.0);
            ExplodeParticles[i].spx *= ((float)(rand() % 20)/20.0);
            size--;
        }
    }
}


void CreateShipDeath(){
    int i;

    /*
    #define CHN_FIRE_ID			0
	 #define CHN_BIGBANG_ID		1
	 #define CHN_THRUST_ID		2
	 #define CHN_BONUS_ID		3
	 #define CHN_HYPERSPACE_ID	4
	 #define CHN_DEAD_ID			5
    */

    PlayChannel(SFX_ID_DEAD);
    resetStarBurst();

    DeathParts.movetime = 50;

    ship_death_timer = DEATH_TIME;

    DeathParts.bpos[0].x = theShip.pts[0].x;
    DeathParts.bpos[0].y = theShip.pts[0].y;
    DeathParts.bpos[1].x = theShip.pts[1].x;
    DeathParts.bpos[1].y = theShip.pts[1].y;

    DeathParts.bpos[2].x = theShip.pts[1].x;
    DeathParts.bpos[2].y = theShip.pts[1].y;
    DeathParts.bpos[3].x = theShip.pts[2].x;
    DeathParts.bpos[3].y = theShip.pts[2].y;

    DeathParts.bpos[4].x = theShip.pts[2].x;
    DeathParts.bpos[4].y = theShip.pts[2].y;
    DeathParts.bpos[5].x = theShip.pts[3].x;
    DeathParts.bpos[5].y = theShip.pts[3].y;

    DeathParts.bpos[6].x = theShip.pts[3].x;
    DeathParts.bpos[6].y = theShip.pts[3].y;
    DeathParts.bpos[7].x = theShip.pts[0].x;
    DeathParts.bpos[7].y = theShip.pts[0].y;

    for(i=0; i<8; i++){
    	DeathParts.sppos[i].x = (fast_cos(13+theShip.rotPtVal[i/2]) * 2.0) / 1.7;
        DeathParts.sppos[i].y = (fast_sin(13+theShip.rotPtVal[i/2]) * 2.0) / 1.7;
    }

    theShip.px = 160;
    theShip.py = 120;
    theShip.sx = 0;
    theShip.sy = 0;

    if(ship_lives==0) {
        ship_lives=3;
    } else
        ship_lives--;
}

void CreateStarBurst(int size, int power, int x, int y){
    int i;
    int k;
    k=0;
    for(i=0; i<MAX_EXPLOSION_PARTICLES; i++){
        if(ExplodeParticles[i].movetim!=0) continue;    // already taken up, need to use another one
        if(size){
            ExplodeParticles[i].type = 1;
            ExplodeParticles[i].movetim = EXPLLOSION_TIMER + randomi(10);
            ExplodeParticles[i].x = x;
            ExplodeParticles[i].y = y;

            k += 30;
            ExplodeParticles[i].spx = fast_cos(k) * ((float)k / 800.0f);
            ExplodeParticles[i].spy = fast_sin(k) * ((float)k / 800.0f);

            size--;
        }
    }
}

int doBonusShipBullet(){
	int x1,y1,x2,y2;
	int x3,x4,y3,y4, stpts;
	int d;

	x1 = (int)BonusShipBullet.x-4;
	y1 = (int)BonusShipBullet.y;
	x2 = (int)BonusShipBullet.x+4;
	y2 = (int)BonusShipBullet.y;

	x4 = theShip.pts[3].x;
	y4 = theShip.pts[3].y;

	for (stpts = 0; stpts < 4; stpts++) { // the ship poly info check
		x3 = theShip.pts[stpts].x;
		y3 = theShip.pts[stpts].y;
		d = isLineHits(x1, y1, x2, y2, x3, y3, x4, y4);
		if (d)
			return (1);

		x4 = x3;
		y4 = y3;
	}
	x2 = x1;
	y2 = y1;
	return (0);
}

char doCheckBulletToAsteroid(){
    int ast, astpt, stpts, d;
	int x1, x2, x3, x4, y1, y2, y3, y4;
	d = 0;
	for(ast = 0; ast<STROIDS_MAX; ast++){	// loop through all the asteroids in the playfield
        if(rocks[ast].slot == 0) continue;
	    x2 = rocks[ast].pts[STROIDS_ANGSTEPS-1].x;
        y2 = rocks[ast].pts[STROIDS_ANGSTEPS-1].y;
		for(astpt=0; astpt<STROIDS_ANGSTEPS; astpt++){    // go through every point in the asteroid  then check each ship poly
            x1 = rocks[ast].pts[astpt].x;
            y1 = rocks[ast].pts[astpt].y;

            for(stpts=0; stpts< BULLETCOUNT; stpts++){  // the bullets
            	if(Bullet[stpts].time == 0 ) continue;
                x3 = Bullet[stpts].px;
                y3 = Bullet[stpts].py;
                x4 = Bullet[stpts].lx;
                y4 = Bullet[stpts].ly;

                d = isLineHits(x1, y1, x2, y2, x3, y3, x4, y4);
                if(d) {
                    if(rocks[ast].age == STROID_SIZE_LARGE) score1+=15;
                    if(rocks[ast].age == STROID_SIZE_MEDIUM) score1+=30;
                    if(rocks[ast].age == STROID_SIZE_SMALL) score1+=50;

                    if(rocks[ast].age == STROID_SIZE_LARGE){
                    	PlayChannel(SFX_ID_BANG);
                        CreateExplosions(50, 2.4, rocks[ast].x, rocks[ast].y);
                        initRock(STROID_SIZE_MEDIUM, (int)rocks[ast].x, (int)rocks[ast].y);
                        initRock(STROID_SIZE_MEDIUM, (int)rocks[ast].x, (int)rocks[ast].y);
                    } else
                    if(rocks[ast].age == STROID_SIZE_MEDIUM){
                    	PlayChannel(SFX_ID_BANG);
                        CreateExplosions(40, 2, rocks[ast].x, rocks[ast].y);
                        initRock(STROID_SIZE_SMALL, (int)rocks[ast].x, (int)rocks[ast].y);
                        initRock(STROID_SIZE_SMALL, (int)rocks[ast].x, (int)rocks[ast].y);
                    } else{
                    	PlayChannel(SFX_ID_BANG);
                        CreateExplosions(20, 2, rocks[ast].x, rocks[ast].y);
                    }
                    flashBank = 1;

                    rocks[ast].slot = 0;
                    Bullet[stpts].time = 0;
                    return(1);
                }
            }

            x2 = x1;
            y2 = y1;
		}
	}
}


void renderShipDeath(){
    int i, x1, x2, y1, y2;
    if(DeathParts.movetime>0){
        DeathParts.movetime --;
        SBGfxFGColour = CRTColour_Red_Bright;// | 0x08;

        for(i=0; i<8; i++){
            x1 = DeathParts.bpos[i].x;
            y1 = DeathParts.bpos[i].y;
            DeathParts.bpos[i].x += DeathParts.sppos[i].x;
            DeathParts.bpos[i].y += DeathParts.sppos[i].y;
            DeathParts.sppos[i].x /= 1.04;
            DeathParts.sppos[i].y /= 1.04;

            i++;
            x2 = DeathParts.bpos[i].x;
            y2 = DeathParts.bpos[i].y;
            DeathParts.bpos[i].x += DeathParts.sppos[i].x;
            DeathParts.bpos[i].y += DeathParts.sppos[i].y;
            DeathParts.sppos[i].x /= 1.04;
            DeathParts.sppos[i].y /= 1.04;
            draw_line(x1,y1,x2,y2);
        }
    }
}

void renderBullets(){
    int i;
    SBGfxFGColour = CRTColour_White;
    for(i=0; i<BULLETCOUNT; i++){
        if(Bullet[i].time>0){
            Bullet[i].time--;
            Bullet[i].px +=Bullet[i].sx;
            Bullet[i].py +=Bullet[i].sy;
            Bullet[i].lx +=Bullet[i].sx;
            Bullet[i].ly +=Bullet[i].sy;

            // wrap screen X
            if(Bullet[i].px<30) {
                Bullet[i].px+=490;
                Bullet[i].lx+=490;
            }
            if(Bullet[i].px>490) {
                Bullet[i].px-=490;
                Bullet[i].lx-=490;
            }

            // wrap screen Y
            if(Bullet[i].py<30) {
                Bullet[i].py+=330;
                Bullet[i].ly+=330;
            }

            if(Bullet[i].py>330) {
                Bullet[i].py-=330;
                Bullet[i].ly-=330;
            }

            draw_line((int)Bullet[i].px, (int)Bullet[i].py, (int)Bullet[i].lx, (int)Bullet[i].ly);
            //crt_drawPixel((int)Bullet[i].px, (int)Bullet[i].py);
        }
    }
}

void renderBonusShipLarge(){
    int i;
    float dx, dy, ldx, ldy;
    int cvol;
    SBGfxFGColour = CRTColour_Magenta;

    bonusShips.x += bonusShips.sx;
    bonusShips.y += bonusShips.sy;

    if((bonusShips.x<-40) || (bonusShips.x > 510)){
    	cvol = GetChannelVolume(SFX_ID_BONUS);
    	cvol -= 2;
        if(cvol <1) cvol = 0;
    	SetChannelVolume(SFX_ID_BONUS,cvol);
    	if(cvol<5) 	StopChannel(SFX_ID_BONUS);
    	bonusShips.timer=2;
    } else

    if(bonusShips.timer>0){
        bonusShips.timer --;
        cvol = GetChannelVolume(SFX_ID_BONUS);
    	cvol += 2;
    	if(cvol>34) cvol=34;
    	SetChannelVolume(SFX_ID_BONUS,cvol);
    }

    ldx = bonusShips.pts[7].x;
    ldy = bonusShips.pts[7].y;
    ldx *= bonusShips.scale;
    ldy *= bonusShips.scale;
    ldx += bonusShips.x;
    ldy += bonusShips.y;

    for(i=0; i<8; i++){
        dx = bonusShips.pts[i].x;
        dy = bonusShips.pts[i].y;
        dx *= bonusShips.scale;
        dy *= bonusShips.scale;
        dx += bonusShips.x;
        dy += bonusShips.y;
        draw_line((int)dx, (int)dy, (int)ldx, (int)ldy);
        ldx = dx;
        ldy = dy;
    }

    dx = bonusShips.pts[2].x;
    dy = bonusShips.pts[2].y;
    dx *= bonusShips.scale;
    dy *= bonusShips.scale;
    dx += bonusShips.x;
    dy += bonusShips.y;

    ldx = bonusShips.pts[7].x;
    ldy = bonusShips.pts[7].y;
    ldx *= bonusShips.scale;
    ldy *= bonusShips.scale;
    ldx += bonusShips.x;
    ldy += bonusShips.y;
    draw_line((int)dx, (int)dy, (int)ldx, (int)ldy);

    dx = bonusShips.pts[3].x;
    dy = bonusShips.pts[3].y;
    dx *= bonusShips.scale;
    dy *= bonusShips.scale;
    dx += bonusShips.x;
    dy += bonusShips.y;

    ldx = bonusShips.pts[6].x;
    ldy = bonusShips.pts[6].y;
    ldx *= bonusShips.scale;
    ldy *= bonusShips.scale;
    ldx += bonusShips.x;
    ldy += bonusShips.y;
    draw_line((int)dx, (int)dy, (int)ldx, (int)ldy);
}


void renderBonusShipBullet(){
	int x,y;
	if(BonusShipBullet.movetim>0){
		BonusShipBullet.movetim--;
		BonusShipBullet.x += BonusShipBullet.spx;
		BonusShipBullet.y += BonusShipBullet.spy;
    
		SBGfxFGColour = CRTColour_Yellow;
		x = (int) BonusShipBullet.x;
		y = (int) BonusShipBullet.y;
		draw_line(x - 4, y - 4, x + 4, y + 4);
		draw_line(x + 4, y - 4, x - 4, y + 4);
	}
}

void resetBonusShip(){
	bonusShips.x = -30;
	bonusShips.sx = 0.0;
	bonusShips.hits =3;
	newShipBonus=1000 + (rand() & 1000);
}

void shipThrust(){
	float bssx, bssy;

	theShip.speed += 0.08f;
	if (theShip.speed > theShip.maxspeed)
		theShip.speed = theShip.maxspeed;

	int angle = ((int)theShip.shipsRotation) % 360;
	if (angle < 0) angle += 360;

	bssx = fast_cos(angle);
	bssy = fast_sin(angle);

	theShip.sx += bssx * theShip.speed;
	theShip.sy += bssy * theShip.speed;
}

int getSpeedSX(){
	return theShip.sx;
}

int getSpeedSY(){
	return theShip.sy;
}








