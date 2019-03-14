
int sceneNumber = 0;

void setup() {
  fullScreen();
}

void draw() {
  switch(sceneNumber){
    case 0 : 
      scene0();
    break;
    
    case 1:
      scene1();
    break;
    
    case 2:
      scene2();
    break;
    
    case 3:
    scene3();
    break;
    
    case 4:
    sceneNumber = 0;
  }
}

void mousePressed() {
  sceneNumber++;
}

void scene0() {
  background(255, 153, 255);
strokeWeight(2);
stroke(255);
fill(233);

for(int y = 0; y < height; y = y+60) {
  for (int x = 0; x < width; x = x+60) {
    rect(x, y, 40, 20);
  }
}
}

void scene1() {
  background(153, 204, 255);
  noStroke();
fill(255);
ellipse(250, 160, 200, 80);
ellipse(138, 144, 90, 90);
ellipse(205, 125, 80, 70);
ellipse(271, 126, 80, 60);
ellipse(324, 164, 80, 80);
ellipse(254, 188, 110, 90);
ellipse(186, 173, 80, 70);


  }




void scene2() {
  background(122, 204, 153);
  fill(155,255,255);
  pushMatrix();
  translate(100,height/2);
  rotate(sin(frameCount *0.10)*(PI*.5));
  rect(0,0,100,100);
  popMatrix();
}

void scene3() {
  background(0, 99, 100);

}
