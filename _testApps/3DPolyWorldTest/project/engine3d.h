
#define WIDTH 480  // Small resolution for embedded displays (e.g., 128x64 OLED)
#define HEIGHT 320
#define FOV 90.0f
#define NEAR 0.1f
#define MAX_ENTITIES 3
#define MAX_VERTS 8
#define MAX_FACES 6

// Colors (grayscale for simplicity; 0=black, 255=white, others in between)
#define COLOR_BLACK 0
#define COLOR_WHITE 255
#define COLOR_RED 128
#define COLOR_GREEN 96
#define COLOR_BLUE 64


// 3D Point
typedef struct {
    float x, y, z;
} Point3D;

// 2D Point (projected)
typedef struct {
    int x, y;
} Point2D;

// Face (quad polygon)
typedef struct {
    int verts[4]; // Vertex indices
    uint8_t color;
} Face;

// Entity (cube)
typedef struct {
    float pos[3]; // Position
    float scale;
    Point3D verts[MAX_VERTS];
    Face faces[MAX_FACES];
} Entity;

// Camera
typedef struct {
    float pos[3]; // x, y, z
    float rot[2]; // pitch, yaw in degrees
} Camera;