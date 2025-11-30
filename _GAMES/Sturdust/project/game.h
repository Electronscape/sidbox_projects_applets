/*
 * game.h
 *
 *  Created on: Jun 10, 2025
 *      Author: electronscape
 */

#ifndef SRC_GAME_H_
#define SRC_GAME_H_

//#include <stdio.h>
//#include <stdint.h>
//#include <inttypes.h>
//#include <string.h>

//#include <math.h>
//#include <stdarg.h>
//#include <stdio.h>
//#include <stdlib.h>

// externs
extern volatile uint32_t clut[256];
extern int StarFieldOn;




#define JOYSTICK_A_INPUT_FIRE	(APIHWButtons() & 0x01)
#define JOYSTICK_A_INPUT_UP		(APIHWButtons() & 0x04)
#define JOYSTICK_A_INPUT_DOWN	(APIHWButtons() & 0x08)
#define JOYSTICK_A_INPUT_LEFT 	(APIHWButtons() & 0x10)
#define JOYSTICK_A_INPUT_RIGHT	(APIHWButtons() & 0x20)



#define CRTColour_Black		0
#define	CRTColour_Red		81
#define	CRTColour_Green		82
#define CRTColour_Yellow	83
#define CRTColour_Blue		84
#define	CRTColour_Magenta	85
#define CRTColour_Cyan		86
#define CRTColour_White		87

#define CRTColour_Black_Bright		64
#define	CRTColour_Red_Bright		65
#define	CRTColour_Green_Bright		66
#define CRTColour_Yellow_Bright		67
#define CRTColour_Blue_Bright		68
#define	CRTColour_Magenta_Bright	69
#define CRTColour_Cyan_Bright		70
#define CRTColour_White_Bright		71


#define SFX_ID_FIRE		    0
#define SFX_ID_DEAD 	    1
#define SFX_ID_BANG		    2
#define SFX_ID_THRUST	    3
#define SFX_ID_BONUS	    4
#define SFX_ID_TELEPORT	    5
#define SFX_ID_EXTRALIFE	6

#define sf_screenwidth  479
#define sf_screenheight 319
#define cx  			(sf_screenwidth/2)
#define cy  			(sf_screenheight/2)
#define sfstars 		90

extern const unsigned char backdrop[];
extern const unsigned char titlescr[];
extern const unsigned char levcompScr[];
extern const unsigned char sprite_bomb[];
extern const unsigned char bigback[];

/////// GAME LOGIC ////////////////
extern float ship_spx, ship_spy, ship_pos_x, ship_pos_y;
extern int ship_death_timer, ship_lives;

extern char stroid_x_alt, stroid_y_alt, stroid_rot_alt;
extern long newShipBonus;

extern unsigned long score1;
extern int gameovertimer;

extern char bThrusting;
extern long newLocationTimer;
extern long BonusShipFireTimer;





#define DEATH_TIME  200
extern int LEVELID;
static int levelTransition;

#define SHIPSIZE				15	// this size of the ship

#define STROIDS_MAX				32
#define STROIDS_ANGSTEPS		16
#define STROIDS_ANGLES			(360 / STROIDS_ANGSTEPS)

#define STROID_SIZE_SMALL   	0
#define STROID_SIZE_MEDIUM  	1
#define STROID_SIZE_LARGE   	2

#define ASTEROIDSIZE_SMALL 		10
#define ASTEROIDSIZE_MEDIUM 	24
#define ASTEROIDSIZE_LARGE 		45


struct fpoints {
    float x,y;
};

/*	// already defined in the API.h
struct points {
	int x,y;
};
*/


static struct stroid {
    unsigned char movetim;
	float x, y;
	float spx, spy;
	int size;
	char colour;
	int slot;
	int age;
	//float rot;

	int rotd;
	int rots[STROIDS_ANGLES+1];
	int rotz[STROIDS_ANGLES+1];
	struct points pts[STROIDS_ANGLES+1];

/*
	struct point {
		signed long x, y;
	} p[STROIDS_ANGLES+1];
*/
} ;

static struct troidShip{
  float px, py, sx, sy, shipsRotation, scale, speed, maxspeed;
  int pointsize[5];
  int rotPtVal[5];
  struct points pts[5];
};

#define BULLETCOUNT 12
extern int bullets;
static struct bullet{
    float px, py, sx, sy, lx, ly;
    int time;

};


#define FLAMECOUNT 24
extern int flames;
static struct flame{
	float px, py, sx, sy;
	int time;
};


static struct splosions {
    unsigned char movetim;
    int type;
    float x, y;
    float spx, spy;
};

static struct shipdeath {
    unsigned char movetime;
    struct fpoints sppos[8];
    struct fpoints bpos[8];
};

#define ship_large  20.0


static struct bonusShip{
    float x, y, timer;
    float scale, sx, sy;
    int score;
    int hits;
    int frequency;
    struct fpoints pts[16];
};




int doAsterGame();
char doCheckBulletToAsteroid();
int doBonusShipBullet();
void CreateStarBurst(int size, int power, int x, int y);
void CreateShipDeath();
void CreateExplosions(int size, int power, int x, int y);
void CreateBonusShipBullet();

void newstar(unsigned short d);
void init_starfield();















#endif /* SRC_GAME_H_ */
