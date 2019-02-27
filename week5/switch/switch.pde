int sceneNumber = 0;

void setup(){
  fullScreen(2); 
}

void draw(){
  switch(sceneNumber){
    case 0 : 
    scene0();
    break;
    //after specifing case, you need a case setting and break
    case 1:
    scene1();
    break;
    case 2:
    scene2();
    break; 
    case 3:
    sceneNumber = 0;
    break;
    default:
    break;
    
  }
}

void mousePressed(){
  if(sceneNumber != 1){
  sceneNumber++;
  }
}

void scene0(){
  background(255, 0, 255);
  
}

void scene1(){
  background(255, 0, 0);
  
  if(mousePressed &&
  dist(mouseX, mouseY, width/2, height/2)<25){
    sceneNumber = 2;
}
//if the distance between the mouse x and mouse y is less than 25, which is the radius of the circle
//then switch to scene
  ellipse(width/2, height/2, 50, 50);
}
void scene2(){
  background(0, 0, 255);
}
