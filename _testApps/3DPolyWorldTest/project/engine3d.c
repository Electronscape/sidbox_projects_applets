#include <math.h>
#include <stdint.h>
#include <string.h>
#include "engine3d.h"
#include "../../../_coreapi_/apis.h"

// Basic 3D Engine for Embedded Systems (No GPU, No SDL)
// Features: Cube entities in a 3D map, controllable camera (simulated input),
//           perspective projection, flat-color polygons (wireframe + basic fill).
// Target: Microcontrollers with a display (e.g., STM32 with TFT LCD or ESP32 with OLED).
// Output: Renders to a framebuffer (WIDTH x HEIGHT x 1 byte per pixel for simplicity).
// Note: No actual display driver; you’ll need to adapt the framebuffer write to your hardware.
// Input: Simulated with basic state (replace with your GPIO/button input).


// Framebuffer (1 byte per pixel, grayscale for simplicity; adapt for RGB if needed)
uint8_t framebuffer[WIDTH * HEIGHT];





// Clear framebuffer
void clear_framebuffer() {
    memset(framebuffer, COLOR_BLACK, WIDTH * HEIGHT);
}


// Project 3D to 2D
int project(Point3D *point, Camera *cam, Point2D *proj) {
    float dx = point->x - cam->pos[0];
    float dy = point->y - cam->pos[1];
    float dz = point->z - cam->pos[2];

    // Rotate yaw (around Y)
    float yaw = cam->rot[1] * M_PI / 180.0f;
    float rx = dx * cosf(yaw) - dz * sinf(yaw);
    float rz = dx * sinf(yaw) + dz * cosf(yaw);
    dx = rx; dz = rz;

    // Rotate pitch (around X)
    float pitch = cam->rot[0] * M_PI / 180.0f;
    float ry = dy * cosf(pitch) - dz * sinf(pitch);
    rz = dy * sinf(pitch) + dz * cosf(pitch);
    dy = ry; dz = rz;

    if (dz < NEAR) return 0;

    // Perspective projection
    float factor = (HEIGHT / 2.0f) / (tanf((FOV / 2.0f) * M_PI / 180.0f) * dz);
    proj->x = (int)(dx * factor + WIDTH / 2.0f);
    proj->y = (int)(-dy * factor + HEIGHT / 2.0f);
    return 1;
}

// Initialize cube
void init_cube(Entity *e, float pos[3], float scale, uint8_t color) {
    e->pos[0] = pos[0]; e->pos[1] = pos[1]; e->pos[2] = pos[2];
    e->scale = scale;

    Point3D local_verts[8] = {
        {-1, -1, -1}, {1, -1, -1}, {1, 1, -1}, {-1, 1, -1}, // Front
        {-1, -1, 1}, {1, -1, 1}, {1, 1, 1}, {-1, 1, 1}     // Back
    };
    for (int i = 0; i < 8; i++) {
        e->verts[i].x = local_verts[i].x * scale + pos[0];
        e->verts[i].y = local_verts[i].y * scale + pos[1];
        e->verts[i].z = local_verts[i].z * scale + pos[2];
    }

    e->faces[0] = (Face){{0,1,2,3}, color};
    e->faces[1] = (Face){{4,5,6,7}, color};
    e->faces[2] = (Face){{0,1,5,4}, COLOR_GREEN};
    e->faces[3] = (Face){{3,2,6,7}, COLOR_GREEN};
    e->faces[4] = (Face){{0,3,7,4}, COLOR_BLUE};
    e->faces[5] = (Face){{1,2,6,5}, COLOR_BLUE};
}

// Render scene
void render(Camera *cam, Entity *entities, int num_entities) {
    clear_framebuffer();

    // Simple depth sort (by entity center)
    for (int i = 0; i < num_entities - 1; i++) {
        for (int j = i + 1; j < num_entities; j++) {
            float dist_i = (entities[i].pos[0] - cam->pos[0]) * (entities[i].pos[0] - cam->pos[0]) +
                           (entities[i].pos[1] - cam->pos[1]) * (entities[i].pos[1] - cam->pos[1]) +
                           (entities[i].pos[2] - cam->pos[2]) * (entities[i].pos[2] - cam->pos[2]);
            float dist_j = (entities[j].pos[0] - cam->pos[0]) * (entities[j].pos[0] - cam->pos[0]) +
                           (entities[j].pos[1] - cam->pos[1]) * (entities[j].pos[1] - cam->pos[1]) +
                           (entities[j].pos[2] - cam->pos[2]) * (entities[j].pos[2] - cam->pos[2]);
            if (dist_i < dist_j) {
                Entity temp = entities[i];
                entities[i] = entities[j];
                entities[j] = temp;
            }
        }
    }

    for (int i = 0; i < num_entities; i++) {
        Entity *e = &entities[i];
        Point2D proj_verts[8];
        int visible[8] = {0};

        // Project vertices
        for (int v = 0; v < 8; v++) {
            if (project(&e->verts[v], cam, &proj_verts[v])) {
                visible[v] = 1;
            }
        }

        // Render faces
        for (int f = 0; f < 6; f++) {
            Face *face = &e->faces[f];
            Point2D face_pts[4];
            int all_visible = 1;
            for (int v = 0; v < 4; v++) {
                if (!visible[face->verts[v]]) {
                    all_visible = 0;
                    break;
                }
                face_pts[v] = proj_verts[face->verts[v]];
            }
            if (all_visible) {
                // Fill polygon
                //fill_quad(face_pts, face->color);
	            //void 	(*drawpoly)					(struct points *points, int count, int closed, int solid, int inverse);
                SBAPI->gfx.drawpoly(face_pts, 4, 1, 1, 0);

                // Draw outline
                for (int v = 0; v < 4; v++) {
                    int next = (v + 1) % 4;
                    //draw_line(face_pts[v].x, face_pts[v].y, face_pts[next].x, face_pts[next].y, COLOR_WHITE);
                }
            }
        }
    }

    // Output framebuffer to display (replace with your driver)
    // Example: for SPI TFT, loop over framebuffer and write pixels
    // for (int y = 0; y < HEIGHT; y++) {
    //     for (int x = 0; x < WIDTH; x++) {
    //         your_display_write_pixel(x, y, framebuffer[y * WIDTH + x]);
    //     }
    // }
}