#include "include.h"

int main() {
  InitWindow(600, 600, "You should change this :thumbsup:");
  while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(BLACK);
    EndDrawing();
  }
  CloseWindow();
  return 0;
}
