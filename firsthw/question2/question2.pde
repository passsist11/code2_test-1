void setup() {
  size(600, 600);
}

void draw() {
    for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      rect(i, j, 5, 5);
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      stroke(r, g, 175);
      point(i, j);
    }
  }
