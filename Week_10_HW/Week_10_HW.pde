float x, xi = 1;
float y, yi;
float z;

void setup(){
  size(1000, 1000);
  background(65, 220, 244);
}

void draw(){
  if(x > width){
   x++;
   y = random(0, height/4);
  }


float n = noise(z);
float yi = map(n, 0, 10, height/2, height);
if(xi > width){
 xi++; 
}

rect(x, y, 40, 40);
rect(xi, yi, 100, 80);

z += .05;

}
