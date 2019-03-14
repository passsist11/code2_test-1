Object myObject; 

void setup(){
  size(600, 600); 
  
  myObject = new Object(); 
}

void draw(){
  background(255); 
  myObject.move(); 
  myObject.checkBoundaries(); 
  myObject.display(); 
}


class Object{
  PVector pos, vel, accel; 
  
  Object(){
    pos = new PVector(width/2, height/2); 
    vel = new PVector(0, 0); 
    
  }
  
  void move(){
    PVector mouse = new PVector(mouseX,mouseY);
    accel = PVector.sub(mouse,pos);
    
    //normalize your accel vector here
    accel.normalize();
    accel.mult(0.5);
    accel.normalize();
    accel.mult(50);
    vel.limit(4); 
    
    //basic movement vector addition here...
    pushMatrix();
    translate(accel.x, accel.y);
    popMatrix();


  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(mouseX,mouseY,30,30);
  }
  
  void checkBoundaries(){
    //add logic here so when the ellipse gets to the edge of the 
    //it is positioned on the opposite side
    if((pos.x > width) || (pos.x < 0)) {
      pos.x = pos.x * -.1;
    }
    if((pos.y > height) || (pos.y < 0)) {
      pos.y = pos.y * -.1;
    }
  }
}
