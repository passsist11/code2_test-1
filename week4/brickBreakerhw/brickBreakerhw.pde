int cols, rows; 
int w = 50;
int h = 25;
int scoreboard;
ArrayList<Bricks> myBricks;

Ball b; 
Paddle p; 
//Bricks myBricks [][]; //setting up a 2D grid to store instances of our bricks
//comment this out when making arraylist because same name
void setup(){
  size(500, 500); 
  cols = width/w; 
  rows = int((height*.5)/h); 
  
  noStroke(); 

  myBricks = new ArrayList<Bricks>();
  
  b = new Ball(width/2, height*.75, random(3,5), random(-5,-4)); 
  p = new Paddle(); 
  
  for(int i = 0; i<cols; i++){
    for(int j = 0; j<rows; j++){
      myBricks.add(new Bricks(i*w+5, j*h+5, w-10, h-10));
      //myBricks[i][j] = new Bricks(i*w+5, j*h+5, w-10, h-10); 
    }
  }
}



void draw(){
  background(0); 
  text(scoreboard, 200, 200);
  
  b.move(); 
  b.display();
  
  p.display(); 
  p.reset(); 
  
  //making sure our ball stays within the boundaries of our screen 
  if(b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2){
    b.bounceSide(); 
  }
  if(b.pos.y<=b.size/2 || b.pos.y>= height-b.size/2){
    b.bounceTop(); 
  }
  
  //ball bouncing off of the paddle 
  //FIX THIS PADDLE COLLISION IS NOT WORKING
  if(b.pos.x >= p.x && b.pos.x <= p.x+w && b.pos.y>=p.y && b.pos.y < p.y+p.h){ 
    b.paddleBounce(); 
  }
  
  //breaking bricks 
  //for(int i = 0; i<cols; i++){
  //  for(int j = 0; j<rows; j++){
      //float bl = map(i, 0, cols, 100, 255); 
      //float g = map(j, 0, rows, 150, 255); 
      //myBricks[i][j].display(color(50, g, bl));  
      
            // checking to see if ball is within the boundaries of our bricks 
      //if(b.pos.x<= (myBricks[i][j].x + myBricks[i][j].w/2) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w/2) 
      //  && b.pos.y<= (myBricks[i][j].y + myBricks[i][j].h/2) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h/2)){
      //    if(myBricks[i][j].o !=0){
      //      scoreboard += 20;
      //    }
      //    myBricks[i][j].o = 0;  //just changing the opacity here but you can figure out how to remove the object using an array list 
      //}
      
  //  }
  //}
  //make a for loops that goes through each element of the arraylist and displays it
  for(int i =0; i < myBricks.size(); i++){
      float bl = map(i, 0, cols, 100, 255); 
      float g = map(i, 0, rows, 150, 255); 
      Bricks tempBricks = myBricks.get(i); //different syntax between array and arraylist 
      tempBricks.display(color(50, g, bl)); //want to check if the ball is within that brick 
  
      // checking to see if ball is within the boundaries of our bricks 
      if(b.pos.x<= (tempBricks.x + tempBricks.w/2) && b.pos.x>= (tempBricks.x - tempBricks.w/2) 
        && b.pos.y<= (tempBricks.y + tempBricks.h/2) && b.pos.y>= (tempBricks.y - tempBricks.h/2)){
            scoreboard += 20;    
            myBricks.remove(i);
      }
  
  //scoreboard
  //if the bricks are hit, one score board will increase in score
  //each brick is 20
  //if the ball goes past the paddle u lose 100 points
//  if(
  

  if(keyPressed){
    if(key==CODED){
      if(keyCode == LEFT){
        p.moveLeft();
      }
      if(keyCode == RIGHT){
        p.moveRight(); 
      }
    }
  }
  }
}

void keyPressed(){

}
