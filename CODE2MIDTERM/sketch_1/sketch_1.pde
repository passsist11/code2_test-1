float radius;
float x, y;
float EDB;

int scale = 5; 

void setup(){
  size(500, 500); 
}

void draw(){
  background(0); 
  
  EDB+=0.01;
  x = sin(EDB)*width/2 + width/2;
  y = sin(EDB)*height/2 + height/2;
  
  fill(255); 
  ellipse(width/2, height/2, x, y);
  
  
  fill(255);
  text(str(printText(width/2, height/2)), width*.1, height*.1); 


}

float printText(text("Grow"), text("Shrink")){


return round();
