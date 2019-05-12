Player player;
ArrayList<Coin> coins;
ArrayList<Brick> bricks;
color player_c = color(100, 200, 200); 
int myPlayer = 3;
int myCoins = 0;
float myHealth = 100;
boolean [] keys = new boolean[128];

void setup(){
  size(800, 400);
  background(66, 137, 244);
  smooth();
  rectMode(CENTER);
  player = new Player();
  coins = new ArrayList<Coin>();
  for(int i=0; i < 50; i++){
    coins.add(new Coin());
  }
  bricks = new ArrayList<Brick>();
  for(int i=0; i < 17; i++){
    bricks.add(new Brick());
  }
}

void draw(){
  background(0);
  caveStone();
  
  for (int i = coins.size() -1; i >= 0; i--){
    Coin c = coins.get(i);
    c.display();
    if(player.checkCollisionCoins(c)){
      myCoins += 10;
      myHealth += 1.0;
      if(myHealth >= 100){
        myHealth = 100;
      }
      coins.remove(i);
      if(coins.size() <= 0){
        print("You win");
        setup();
        myCoins = 0;
      }
    }
  }
  
  for (int i = bricks.size() -1; i >= 0; i--){
    Brick b = bricks.get(i);
    b.display();
   
    if(player.checkCollisionBricks(b)){
      player_c = color(255, 0, 0);
      myHealth -= 1.5;
      if(myHealth <= 0){
        myPlayer -= 1;
        myHealth = 100;
      }
    } 
  }
  player.display();
  player.move();
  textSize(15);
  fill(255);
  text("Player = " + myPlayer, 30, 30, 255);
  text("Coins = " + myCoins, 30, 50, 255); 
  text("Health = " + myHealth, 150, 50, 255); 
  
  if(myPlayer <= 0){
    setup();
    myCoins = 0;
    myHealth = 100;
    myPlayer = 2;
  } else {
    player_c = color(100, 200, 200);
  }
  
}

class Player{
  PVector pos;
  PVector acc;
  PVector vel;
  PVector speed;
  
  Player(){
    pos = new PVector(-5, height/2);
    acc = new PVector(0.2, 0.2);
    vel = new PVector(0,50);
    speed = new PVector(0.6,0);
  }
  
  void display() {
    fill(player_c);
    rect(pos.x, pos.y,30,30, 7);
  }
  
  void move(){
    acc.normalize();
    vel.mult(5);
    vel.limit(10);
    vel = vel.add(acc);
    pos.add(speed);

    if(pos.x < -50){
      pos.x = width; 
    }
    if(pos.x > width){
      pos.x = -50;  
      bricks = new ArrayList<Brick>();
      for(int i=0; i < 10; i++){
        bricks.add(new Brick());
      }
    }
    if(pos.y > height - 120 ){
      pos.y = height - 120; 
    }
    if(pos.y < 120){
      pos.y = 120; 
    }

    if(keys[LEFT])
      pos.x -= vel.x;
    if(keys[RIGHT])
      pos.x += vel.x;
    if(keys[UP])
      pos.y -= vel.y;
    if(keys[DOWN])
      pos.y += vel.y;
  }

  boolean checkCollisionBricks(Brick b){
     if(dist(player.pos.x, player.pos.y, b.pos.x, b.pos.y) <= b.b_size){
        return true; 
      } else {
        return false;
      }
  }

  boolean checkCollisionCoins(Coin c){
    if(dist(player.pos.x, player.pos.y, c.pos.x, c.pos.y) < c.radius){
        return true;
      } else {
        return false;
      }
  }
  
}

class Coin{
  
  PVector pos;
  PVector acc;
  PVector vel;
  color c;
  float radius;
  
  Coin(){
    pos = new PVector(random(50, width), random(height-150, height-110));
    acc = new PVector(0,0);
    vel = new PVector(0,0);
    radius = 20;
    c = color(255, 204, 0);
  }
  
  void display(){
    pushMatrix();
    noStroke();
    translate(pos.x, pos.y);
    fill(80);
    ellipse(2,2, radius, radius);
    fill(c);
    ellipse(0,0,radius, radius);
    fill(0);
    textSize(10);
    text("$10", -12, 5);
    popMatrix();

  }
  
}

class Brick {
  PVector pos;
  PVector acc;
  PVector vel;
  float b_size = 25; 
  color c;
  
  Brick (){
    pos = new PVector(random(100, width), random(110, height- 110));
    acc = new PVector(0,0);
    vel = new PVector(0,0);
    c = color (143, 30, 204);
  }
  
  void display(){
    pushMatrix();
    translate(pos.x, pos.y);
    fill(c);
    rect(0, 0, b_size, b_size);
    popMatrix();
  }
  
}

void keyPressed(){
  keys[keyCode] = true;
}

void keyReleased(){
  keys[keyCode] = false;
}

void caveStone(){
  for(int i = 15; i <= width; i += 30) {
    rect(i, 85, 30, 30);
    rect(i, 315, 30, 30);
  }
  for(int R = 15; R <= width; R += 90) {
    fill(0);
    rect(R, 85, 30, 30);
    rect(R, 315, 30, 30);
  }
  for(int G = 45; G <= width; G += 90) {
    fill(42, 178, 240);
  }
}
