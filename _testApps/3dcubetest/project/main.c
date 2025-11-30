#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "../../../_coreapi_/apis.h"
#include "cracktro.h"

#define SCREEN_W 480
#define SCREEN_H 320
#define CUBE_SIZE 100
#define CAMERA_DIST 500
#define GRID_RES 4  // Subdivisions per face axis

// background tile
#define TILE_SIZE 64
#define GRID_COLS 10
#define GRID_ROWS 10
#define ZOOM_BASE 128   // 1.0 in 8.8 fixed point
#define ZOOM_RANGE 64   // Zoom +/-0.5 range (~0.75 to 1.25x)



uint32_t clut[256] = {0};

void init_clut() {
    clut[0] = 0x00000000; // transparent black

    // Base colors (opaque)
    clut[1] = 0x5F0000FF; // Blue
    clut[2] = 0x5F00FF00; // Green
    clut[3] = 0x5FFF0000; // Red
    clut[4] = 0x5F800080; // Purple (dark magenta)
    clut[5] = 0x5FFFFF00; // Yellow
    clut[6] = 0x5FFF8000; // Orange

    // 50% bright versions (half brightness)
    clut[7] = 0x3F000080; // Blue dim
    clut[8] = 0x3F008000; // Green dim
    clut[9] = 0x3F800000; // Red dim
    clut[10] = 0x3F400040; // Purple dim
    clut[11] = 0x3F808000; // Yellow dim
    clut[12] = 0x3F804000; // Orange dim

	clut[13] = 0xff3B67A2;	// back ground grid 1
	clut[14] = 0xffAFAFAF;	// back ground grid 1

    clut[16] = 0xFFFF0000;
    clut[17] = 0xFFFFFFFF;
    clut[18] = 0x3F000000;

    // Fill rest with black opaque
    for (int i = 19; i < 256; i++) {
        clut[i] = 0xFF000000;
    }
}

#define VERTS_PER_FACE ((GRID_RES + 1) * (GRID_RES + 1))
#define TOTAL_VERTS (VERTS_PER_FACE * 6)
#define TOTAL_TRIS (GRID_RES * GRID_RES * 2 * 6)

typedef struct __attribute__((packed, aligned(4))) {
    int16_t x, y, z;
    int16_t _pad; // Padding to align to 4 bytes
} Vec3;

typedef struct { int x, y; } Vec2;
typedef struct {
    int v0, v1, v2;
    uint8_t color_main;
} Face;

Vec3 cube_verts[TOTAL_VERTS];
Vec3 sphere_verts[TOTAL_VERTS];
Face faces[TOTAL_TRIS];

Vec3 normalize(Vec3 v) {
    float fx = v.x / (float)CUBE_SIZE;
    float fy = v.y / (float)CUBE_SIZE;
    float fz = v.z / (float)CUBE_SIZE;
    float len = sqrtf(fx * fx + fy * fy + fz * fz);
    if (len == 0) len = 1.0f;
    fx /= len; fy /= len; fz /= len;
    Vec3 n = { fx * CUBE_SIZE, fy * CUBE_SIZE, fz * CUBE_SIZE };
    return (Vec3){ (int16_t)n.x, (int16_t)n.y, (int16_t)n.z };
}

uint8_t face_base_idx[] = {1, 2, 3, 4, 5, 6};

void generate_subdivided_cube() {
    const int step = (2 * CUBE_SIZE) / GRID_RES;
    const Vec3 normals[6] = {
        { 0, 0, -1 }, { 0, 0, 1 }, { 0, -1, 0 },
        { 0, 1, 0 }, { -1, 0, 0 }, { 1, 0, 0 }
    };
    const Vec3 u_dirs[6] = {
        { 0, 1, 0 },  { 1, 0, 0 },  { 1, 0, 0 },
        { 0, 0, 1 },  { 0, 0, 1 },  { 0, 1, 0 }
    };
    const Vec3 v_dirs[6] = {
        { 1, 0, 0 },  { 0, 1, 0 },  { 0, 0, 1 },
        { 1, 0, 0 },  { 0, 1, 0 },  { 0, 0, 1 }
    };

    int vi = 0, fi = 0;

    for (int f = 0; f < 6; f++) {
        Vec3 normal = normals[f];
        Vec3 u = u_dirs[f];
        Vec3 v = v_dirs[f];

        int base = vi;

        for (int j = 0; j <= GRID_RES; j++) {
            for (int i = 0; i <= GRID_RES; i++) {
                Vec3 p = {
                    normal.x * CUBE_SIZE + (i - GRID_RES / 2) * step * u.x + (j - GRID_RES / 2) * step * v.x,
                    normal.y * CUBE_SIZE + (i - GRID_RES / 2) * step * u.y + (j - GRID_RES / 2) * step * v.y,
                    normal.z * CUBE_SIZE + (i - GRID_RES / 2) * step * u.z + (j - GRID_RES / 2) * step * v.z
                };
                cube_verts[vi] = (Vec3){ (int16_t)p.x, (int16_t)p.y, (int16_t)p.z };
                sphere_verts[vi] = normalize(p);
                vi++;
            }
        }

        for (int j = 0; j < GRID_RES; j++) {
            for (int i = 0; i < GRID_RES; i++) {
                int i0 = base + j * (GRID_RES + 1) + i;
                int i1 = i0 + 1;
                int i2 = i0 + (GRID_RES + 1);
                int i3 = i2 + 1;
                uint8_t base_col = ((i + j) % 2 == 0) ? face_base_idx[f] : face_base_idx[f] + 6;
                faces[fi++] = (Face){ i0, i1, i3, base_col };
                faces[fi++] = (Face){ i0, i3, i2, base_col };
            }
        }
    }
}


int project_point(Vec3 v, Vec2* out) {
    int z = v.z + CAMERA_DIST;
    if (z <= 0) return 0;
    int x_proj = (v.x * (SCREEN_W / 2)) / z;
    int y_proj = (v.y * (SCREEN_W / 2)) / z;
    out->x = (SCREEN_W / 2) + x_proj;
    out->y = (SCREEN_H / 2) - y_proj;
    return 1;
}

int cross_z(Vec2 a, Vec2 b, Vec2 c) {
    int abx = b.x - a.x, aby = b.y - a.y;
    int acx = c.x - a.x, acy = c.y - a.y;
    return abx * acy - aby * acx;
}

void draw_triangle(Vec2* pts, uint8_t col) {
    *SBAPI->gfx.forecolour = col;
    struct polypoints tri;
    for (int i = 0; i < 3; i++) {
        tri.x[i] = pts[i].x;
        tri.y[i] = pts[i].y;
        tri.z[i] = 0;
    }
    SBAPI->gfx.drawtriangle(&tri, 1);
    //int min_x = pts[0].x, max_x = pts[0].x;
    //for (int i = 1; i < 3; i++) {
    //    if (pts[i].x < min_x) min_x = pts[i].x;
    //    if (pts[i].x > max_x) max_x = pts[i].x;
    //}
    //int mid_x = (min_x + max_x) / 2;
    //int rect_w = max_x - mid_x;
    //if (rect_w > 0) {
    //    SBGfxFGColour = shade;
    //    //APIGFXRectF(mid_x, 0, rect_w, SCREEN_H);
    //}
}

Vec3 rotate(Vec3 v, int ax, int ay, int az) {
    int sx = SBMathsinfi(ax), cx = SBMathcosfi(ax);
    int sy = SBMathsinfi(ay), cy = SBMathcosfi(ay);
    int sz = SBMathsinfi(az), cz = SBMathcosfi(az);

    Vec3 r = v;
    int y = ((r.y * cx) - (r.z * sx)) >> 15;
    int z = ((r.y * sx) + (r.z * cx)) >> 15;
    r.y = y; r.z = z;
    int x = ((r.x * cy) + (r.z * sy)) >> 15;
    z = ((-r.x * sy) + (r.z * cy)) >> 15;
    r.x = x; r.z = z;
    x = ((r.x * cz) - (r.y * sz)) >> 15;
    y = ((r.x * sz) + (r.y * cz)) >> 15;
    r.x = x; r.y = y;
    return r;
}

Vec3 interp(Vec3 a, Vec3 b, int t) {
    Vec3 o;
    o.x = a.x + (((b.x - a.x) * t) >> 8);
    o.y = a.y + (((b.y - a.y) * t) >> 8);
    o.z = a.z + (((b.z - a.z) * t) >> 8);
    return o;
}


int is_quad_offscreen(int* x, int* y) {
    // Check if all points are outside the screen in any one direction
    int left = 1, right = 1, top = 1, bottom = 1;
    for (int i = 0; i < 4; i++) {
        if (x[i] >= 0) left = 0;
        if (x[i] < SCREEN_W) right = 0;
        if (y[i] >= 0) top = 0;
        if (y[i] < SCREEN_H) bottom = 0;
    }
    return (left || right || top || bottom);
}

void draw_rotating_checkerboard(int angle, int zoom_angle, uint32_t colorA, uint32_t colorB) {
 int cos_a = SBMathcosfi(angle);
    int sin_a = SBMathsinfi(angle);
    int zoom = ZOOM_BASE + ((SBMathcosfi(zoom_angle) * ZOOM_RANGE) >> 15);

    int cx = (SCREEN_W *2 )/ 2;
    int cy = (SCREEN_H *2 )/ 2;

    for (int j = -GRID_ROWS / 2; j < GRID_ROWS / 2; j++) {
        for (int i = -GRID_COLS / 2; i < GRID_COLS / 2; i++) {
            // Skip offscreen tiles faster
            int base_x = i * TILE_SIZE;
            int base_y = j * TILE_SIZE;

            int x0 = (base_x * zoom) >> 6;
            int y0 = (base_y * zoom) >> 6;
            int x1 = ((base_x + TILE_SIZE) * zoom) >> 6;
            int y1 = ((base_y + TILE_SIZE) * zoom) >> 6;

            // Pre-rotate corners
            int sx0 = cx + ((x0 * cos_a - y0 * sin_a) >> 15);
            int sy0 = cy + ((x0 * sin_a + y0 * cos_a) >> 15);
            int sx1 = cx + ((x1 * cos_a - y0 * sin_a) >> 15);
            int sy1 = cy + ((x1 * sin_a + y0 * cos_a) >> 15);
            int sx2 = cx + ((x1 * cos_a - y1 * sin_a) >> 15);
            int sy2 = cy + ((x1 * sin_a + y1 * cos_a) >> 15);
            int sx3 = cx + ((x0 * cos_a - y1 * sin_a) >> 15);
            int sy3 = cy + ((x0 * sin_a + y1 * cos_a) >> 15);

            int xs[4] = { sx0, sx1, sx2, sx3 };
            int ys[4] = { sy0, sy1, sy2, sy3 };

            //if (is_quad_offscreen(xs, ys)) continue;

            uint32_t color = ((i + j) & 1) ? colorA : colorB;
            SBGfxFGColour = color;

            struct polypoints tri;

            tri.x[0] = sx0; tri.y[0] = sy0;
            tri.x[1] = sx1; tri.y[1] = sy1;
            tri.x[2] = sx2; tri.y[2] = sy2;
            tri.z[0] = tri.z[1] = tri.z[2] = 0;
            SBAPI->gfx.drawtriangle(&tri, 1);

            tri.x[0] = sx0; tri.y[0] = sy0;
            tri.x[1] = sx2; tri.y[1] = sy2;
            tri.x[2] = sx3; tri.y[2] = sy3;
            SBAPI->gfx.drawtriangle(&tri, 1);
        }
    }
}

#define BIGBACKSIZE ((SCREEN_W * 2) * (SCREEN_H * 2))

__attribute__((aligned(4)))
volatile uint8_t* BACKLayerBF1[BIGBACKSIZE] = {0};// = (uint32_t*)(*SBAPI->gfx.BackBuffer);  
//volatile uint8_t* BACKLayerBF1;// = (uint8_t*)(*SBAPI->gfx.BackBuffer);  

__attribute__((aligned(4)))
volatile uint8_t* BACKLayerBF2[BIGBACKSIZE] = {0};// = (uint32_t*)


static Vec3 interp_verts[TOTAL_VERTS];
static Vec3 rotated_verts[TOTAL_VERTS];
static int last_morph = -999;

void update_vertices(int morph) {
    if (morph != last_morph) {
        for (int i = 0; i < TOTAL_VERTS; i++)
            interp_verts[i] = interp(cube_verts[i], sphere_verts[i], morph);
        last_morph = morph;
    }
}

void update_rotations(int ax, int ay, int az) {
    for (int i = 0; i < TOTAL_VERTS; i++)
        rotated_verts[i] = rotate(interp_verts[i], ax, ay, az);
}


void scroll_background_wave(int frame) {
    // Calculate smooth scroll offsets using sine waves
	// Assuming frame counts up by 1 each iteration, convert to degrees (e.g. multiply by some speed factor)
	int angle_x = (frame * 3) % 360;  // speed factor for scroll_x wave
	int angle_y = (frame * 2) % 360;  // speed factor for scroll_y wave

	// APIsinfi and APIcosfi return values in range [-32767..32767], scale accordingly
	int scroll_x = (SBMathsinfi(angle_x) * TILE_SIZE) >> 15;  // >>15 because 32767 ~ 1.0 fixed point
	int scroll_y = (SBMathcosfi(angle_y) * TILE_SIZE) >> 15;

	// Wrap scroll offsets to positive tile size range
	//scroll_x = (scroll_x + TILE_SIZE) % TILE_SIZE;
	//scroll_y = (scroll_y + TILE_SIZE) % TILE_SIZE;


    // Here you call the SIDBOX API to set BG scroll:
    SBAPI->gfx.setBGViewport(scroll_x+246, scroll_y+160);
}

//__attribute__((aligned(4)))
//uint8_t* backbuf;

uint8_t message[] = {
    "            **** HELLO ****\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "Hello, I hope this demo works!\n"
    "\n"
    "I wonder if I can type anything\n"
    "\n"
    "So...\n"
    "\n"
    "Hello!!\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "This is a small demo that demos the\n"
    "\n"
    "ability of poly draw API and show the\n"
    "\n"
    "ability to blend and shading.\n"
    "\n"
    "The music is included in the binary\n"
    "\n"
    "unfortunately the background rotation\n"
    "\n"
    "takes alot of pressure so does have\n"
    "\n"
    "a slight pause. PolyDraw is expensive!\n"
    "\n"
    "Anyway, I hope this scrolly also looks\n"
    "\n"
    "ok :)\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "It's sooo cool that the sidbox can run\n"
    "\n"
    "native code! I wonder what other demos\n"
    "\n"
    "can be done with the API.\n"
    "\n"
    "the API is limited, so its going to\n"
    "\n"
    "annoy programmers if the API changes.\n"
    "\n"
    "I WAS going to try to make it that NEW\n"
    "\n"
    "api entries are just added at the\n"
    "\n"
    "bottom but turns out the structures\n"
    "\n"
    "will become so messy that will end up\n"
    "\n"
    "with things like API->gfx..\n"
    "\n"
    "API->gfxv2...  API->gfxv3 and so\n"
    "\n"
    "trying to find things like that will\n"
    "\n"
    "just be irritating in it self\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "I am having so much fun writing small\n"
    "\n"
    "applets! But I also have NO idea what\n"
    "\n"
    "to write in these scrollys!!\n"
    "\n"
    "anyway, I hope you like these little\n"
    "\n"
    "demos :)\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "               end end!\n\n\n\n"
};

int main(int argc, char *argv[]) {

    DIVZEROOFF;
    SBAPI->gfx.setBacklightBrightness(255);
	SBAPI->gfx.initdisplay(220, FPS_50hz);	// 60fps landscape mode
    SBAPI->gfx.displaymode(SCREEN_W, SCREEN_H, SCREEN_W * 2, SCREEN_H * 2, DISPFLAG_DUALLAYER);

	*SBAPI->gfx.DrawBuffer = RAM_LCD_DISPLAYBUFFER1;
	SBAPI->gfx.clearDrawBuffer(0);

	*SBAPI->gfx.DrawBuffer = RAM_LCD_DISPLAYBUFFER2;
	SBAPI->gfx.clearDrawBuffer(0);

	uint32_t oldAudioFlags = SBAPI->snd.channelconfigs->reg;
    

	SBAPI->gfx.clearBackLayerBuffer(0);

	//int8_t* BACKLayerBF1 = (uint8_t*)(*SBAPI->gfx.ActiveBackLayerBuffer); 
	//BACKLayerBF1 = (uint8_t*)(*SBAPI->gfx.ActiveBackLayerBuffer);  
	//*SBAPI->gfx.ActiveBackLayerBuffer = BACKLayerBF1;
	//BACKLayerBF2 = (uint32_t*)

	SBAPI->gfx.setFGViewport(0, 0);
	SBAPI->gfx.setBGViewport(0, 0);
    generate_subdivided_cube();

	uint8_t *mod_data = (uint8_t *)(0xD0000000);
	memcpy(mod_data, tune, 18512);

    uint8_t flip = 0;
    int angle_x = 0, angle_y = 0, angle_z = 0;
    int morph = 0, dir = 1;

	SBAPI->sys.delayMs(10);
	init_clut();

	SBGfxPalleteUpdate(clut, 0);	// back ground
	SBGfxPalleteUpdate(clut, 1);	// back ground
	
	uint32_t audctrlbits =  0x55FF;//(uint32_t)( AUDIOFLAG_CHANNEL0ON ) | ( AUDIOFLAG_CHANNEL1ON | AUDIOFLAG_CHANNEL1LR );
	SBAPI->snd.channelconfigs->reg = audctrlbits;//oldAudioFlags & ~(AUDIOFLAG_AMIGAFILTON | AUDIOFLAG_EQON | AUDIOFLAG_AGCON | AUDIOSTEREOMIX);	

	SBAPI->music.initplayer(AUDIO_MODE_MOD, 0);

	int angle = 33;
	int zoom_angle = 140;

	SBAPI->gfx.render(DISPRM_2LAYER);

	*SBAPI->gfx.ActiveBackLayerBuffer = (uint8_t *)BACKLayerBF2;
	*SBAPI->gfx.DrawBuffer =  (uint8_t *)BACKLayerBF1;

	
	SBAPI->gfx.setBitmapDimentions(SCREEN_W*2, SCREEN_H*2);
	draw_rotating_checkerboard(angle, zoom_angle, 13, 14);
	
	SBAPI->gfx.setBitmapDimentions(SCREEN_W, SCREEN_H);

	*SBAPI->gfx.ActiveBackLayerBuffer = (uint8_t *)BACKLayerBF1;
	*SBAPI->gfx.DrawBuffer   = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER1 : (uint8_t *)RAM_LCD_DISPLAYBUFFER2;
	*SBAPI->gfx.ActiveBuffer = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER2 : (uint8_t *)RAM_LCD_DISPLAYBUFFER1;


	int frame=0;
	int tickTime=0;

    int LineCount = 0;

    for(int lines=0; lines<strlen(message); lines++){
        if(message[lines]=='\n') LineCount++;
    }
    LineCount += 20;
    LineCount = 16 * LineCount; 
    int scrollY = 320;

    int borderIn=0;

    while (1) {
        if (SBHWButtons() & BTN_FIRE2) {
			SBAPI->music.LoadAndplay("",0,0);	// stop music
			SBAPI->snd.channelconfigs->reg = oldAudioFlags; // restore old audio bits
			break;
		}
		
    	//zoom_angle = (zoom_angle + 20) % 360;  // smoother slower zoom
		SBAPI->gfx.clearDrawBuffer(0); 

        morph += dir * 2;
        if (morph > 256) { morph = 256; dir = -5; }
        if (morph < -255)   { morph = -255;   dir = 5;  }

		update_vertices(morph);
		update_rotations(angle_x, angle_y, angle_z);


        Vec2 screen[TOTAL_VERTS];
        uint8_t visible[TOTAL_VERTS] = {0};
        for (int i = 0; i < TOTAL_VERTS; i++)
            visible[i] = project_point(rotated_verts[i], &screen[i]);

		
		for (int i = 0; i < TOTAL_TRIS; i++) {
			Face f = faces[i];
			if (!visible[f.v0] || !visible[f.v1] || !visible[f.v2]) continue;
			// Use original culling condition:
			if (cross_z(screen[f.v0], screen[f.v1], screen[f.v2]) < 0) continue;
			Vec2 tri[3] = { screen[f.v0], screen[f.v1], screen[f.v2] };
			draw_triangle(tri, f.color_main);
		}

        scrollY --;
        if(scrollY < -LineCount) scrollY = 320;

        if(scrollY < -(LineCount-320)){
            borderIn--;
            if(borderIn < 0)
                borderIn = 0;
        } else
        if( (scrollY < 320) && ( scrollY > -(LineCount-320)  ) ){
            borderIn++;
            if(borderIn>64)
                borderIn = 64;
        }

        
        

        *API->gfx.forecolour = 18;
        API->gfx.drawtextf(88, scrollY+2, message);
        *API->gfx.forecolour = 17;
		API->gfx.drawtextf(86, scrollY, message);
        API->gfx.drawline(0,16,480,16);
        API->gfx.drawline(0,302,480,302);


        *API->gfx.forecolour = 18;
        API->gfx.rectf(0,0, 480, 16);
        API->gfx.rectf(0,304, 480, 320);

        API->gfx.rectf(0,18, borderIn, 302);
        API->gfx.rectf(478-borderIn ,18, 480, 302);

        *API->gfx.forecolour = 17;
        API->gfx.drawline(borderIn,18,borderIn,302);
        API->gfx.drawline(478-borderIn,18,478-borderIn,302);




		scroll_background_wave(frame++);
		//*SBAPI->gfx.ActiveBackLayerBuffer = (uint8_t *)BACKLayerBF1;
		/*
		draw_rotating_checkerboard(angle, zoom_angle, 13, 14);
		*/
        #if(0)
		if((tickTime++ > 43))
		{
			tickTime=0;
			angle = (angle + 22) % 360;

			*SBAPI->gfx.ActiveBuffer = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER2 : (uint8_t *)RAM_LCD_DISPLAYBUFFER1;
			*SBAPI->gfx.ActiveBackLayerBuffer = flip ? (uint8_t *)BACKLayerBF1 : (uint8_t *)BACKLayerBF2;
			*SBAPI->gfx.DrawBuffer =   flip ? (uint8_t *)BACKLayerBF2 : (uint8_t *)BACKLayerBF1;

			SBAPI->gfx.setBitmapDimentions(SCREEN_W*2, SCREEN_H*2);
			draw_rotating_checkerboard(angle, zoom_angle, 13, 14);
	
			SBAPI->gfx.setBitmapDimentions(SCREEN_W, SCREEN_H);


		}else *SBAPI->gfx.ActiveBuffer = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER2 : (uint8_t *)RAM_LCD_DISPLAYBUFFER1;
        #endif
        *SBAPI->gfx.ActiveBuffer = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER2 : (uint8_t *)RAM_LCD_DISPLAYBUFFER1;





		*SBAPI->gfx.DrawBuffer   = flip ? (uint8_t *)RAM_LCD_DISPLAYBUFFER1 : (uint8_t *)RAM_LCD_DISPLAYBUFFER2;
        flip = !flip;

        SBAPI->gfx.waitvsync();
        SBAPI->gfx.render(DISPRM_2LAYER);

        angle_x = (angle_x + 2) % 360;
        angle_y = (angle_y + 3) % 360;
        angle_z = (angle_z + 1) % 360;

        SBAPI->music.UpdatePlayer();
    }
    return 0;
}
