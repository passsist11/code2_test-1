class Move {
  int w = 300;
  int h = 120;
  float z;
  float x;
  
  Move (float z, float x) {
    z = 20;
    x = random(0);
  }
  
  void update() {
    if (mousePressed) {
      fill(0);
      rect(w, h, 100, 100);
    }
  }
  
  void display() {
    fill(213, 255, 0);
    rect(w, h, z, x);
  }
}
