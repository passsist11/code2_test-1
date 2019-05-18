int num = 100;
Ball[] balls = new Ball[num];
Move move;

void setup() {
  size(750, 400);
  background(0);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
  
  move = new Move(10, 10);
}


void draw() {
  background(0);
  for (int  i = 0; i < balls.length; i++) {
    balls[i].update();
    balls[i].display();
    move.update();
    move.display();
  }
}
