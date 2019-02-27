int sceneNumber = 0;
tear tt;

void setup(){
//fullScreen(1);
tt = new tear(300,160);
size(600,600);
}
//story
//character stands alone in first scene    
//character starts to cry in second scene
//character jumps and blows a kiss, is it raining?

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
  println (mouseX + ", " + mouseY);
}

void mousePressed(){
//  if(sceneNumber != 2){ 
  sceneNumber++;
 // }
}

void scene0(){
   background(171, 178, 185);
   fill(237, 187, 153);
   noStroke();
   rect(200,100,150,150); //head

   
   ellipse(375,323, 100, 30);
   quad(410,314,420,250,455,255,420,330);
   ellipse(175,323,100,30);
   quad(145,314,120,250,95,255,130,330);
   
   fill(255);
   rect(200,250,150,170);//body
   
   stroke(0);
   strokeWeight(2);
   triangle(200,250,250,250,225,290); //triangle collar left
   
   triangle(300,250,350,250,325,290); // triangle collar right
   
   fill(102,0,0); //burgundy
   triangle(275,300,250,370,300,370); //tie
   
  noStroke();
  fill(121, 85, 72);
  triangle(175,520,220,500,220,480); //left shoe
  triangle(370,520,330,500,330,480); //right shoe
   
   stroke(0);
   fill(161, 136, 127);
   rect(200,420,75,80);
   rect(275,420,75,80); //pants
   
  noFill();
  arc(275, 160, 80, 50, 0, PI); //how to make it a frown
  

  fill(255);
  quad(250, 180, 265, 185, 260, 205, 250, 210);
  quad(266, 186, 280, 186, 280, 210, 270, 210); 
  quad(283, 186, 296, 184, 298, 206, 288, 209);//teeth
  

//translate(mouseX - 50, mouseY - 50); //how to only have this work on the heart
fill(102,0,0); //burgundy
beginShape(TRIANGLE_STRIP); //start of tie like shape
vertex(240, 300); //bottom left point x-10, y+50
vertex(250, 250); //top left point
vertex(300, 250); //topright point
vertex(310, 300); //bottom right point x+10, y+50
endShape();
     
   fill(0); 
   ellipse(255, 160, 10,10); //eye
   ellipse(300,160,10,10); //eye
 
   stroke(0);
   line(230, 160, 260, 140); //left eyebrow
   line(320,160,290,140);    //right eyebrow
   strokeWeight(5);
  
}

void scene1(){
background(93, 173, 226);

   fill(237, 187, 153);
   noStroke();
   rect(200,100,150,150); //head

   
   ellipse(375,323, 100, 30);
   quad(410,314,420,250,455,255,420,330);
   ellipse(175,323,100,30);
   quad(145,314,120,250,95,255,130,330);
   
   fill(255);
   rect(200,250,150,170);//body
   
   stroke(0);
   strokeWeight(2);
   triangle(200,250,250,250,225,290); //triangle collar left
   
   triangle(300,250,350,250,325,290); // triangle collar right
   
   fill(102,0,0); //burgundy
   triangle(275,300,250,370,300,370); //tie
   
  noStroke();
  fill(121, 85, 72);
  triangle(175,520,220,500,220,480); //left shoe
  triangle(370,520,330,500,330,480); //right shoe
   
   stroke(0);
   fill(161, 136, 127);
   rect(200,420,75,80);
   rect(275,420,75,80); //pants
   
  noFill();
  arc(275, 160, 80, 50, 0, PI); //how to make it a frown
  

  fill(255);
  quad(250, 180, 265, 185, 260, 205, 250, 210);
  quad(266, 186, 280, 186, 280, 210, 270, 210); 
  quad(283, 186, 296, 184, 298, 206, 288, 209);//teeth
  

//translate(mouseX - 50, mouseY - 50); //how to only have this work on the heart
fill(102,0,0); //burgundy
beginShape(TRIANGLE_STRIP); //start of tie like shape
vertex(240, 300); //bottom left point x-10, y+50
vertex(250, 250); //top left point
vertex(300, 250); //topright point
vertex(310, 300); //bottom right point x+10, y+50
endShape();
     
   fill(0); 
   ellipse(255, 160, 10,10); //eye
   ellipse(300,160,10,10); //eye
 
   stroke(0);
   line(230, 160, 260, 140); //left eyebrow
   line(320,160,290,140);    //right eyebrow
   strokeWeight(5);
   
   tt.display();
   tt.fall();
  
}

void scene2(){
background(231, 76, 60);

   fill(237, 187, 153);
   noStroke();
   rect(200,100,150,150); //head

   
   ellipse(375,323, 100, 30);
   quad(410,314,420,250,455,255,420,330);
   ellipse(175,323,100,30);
   quad(145,314,120,250,95,255,130,330);
   
   fill(255);
   rect(200,250,150,170);//body
   
   stroke(0);
   strokeWeight(2);
   triangle(200,250,250,250,225,290); //triangle collar left
   
   triangle(300,250,350,250,325,290); // triangle collar right
   
   fill(102,0,0); //burgundy
   triangle(275,300,250,370,300,370); //tie
   
  noStroke();
  fill(121, 85, 72);
  triangle(175,520,220,500,220,480); //left shoe
  triangle(370,520,330,500,330,480); //right shoe
   
   stroke(0);
   fill(161, 136, 127);
   rect(200,420,75,80);
   rect(275,420,75,80); //pants
   
  noFill();
  arc(275, 160, 80, 50, 0, PI); //how to make it a frown
  

  fill(255);
  quad(250, 180, 265, 185, 260, 205, 250, 210);
  quad(266, 186, 280, 186, 280, 210, 270, 210); 
  quad(283, 186, 296, 184, 298, 206, 288, 209);//teeth
  

//translate(mouseX - 50, mouseY - 50); //how to only have this work on the heart
fill(102,0,0); //burgundy
beginShape(TRIANGLE_STRIP); //start of tie like shape
vertex(240, 300); //bottom left point x-10, y+50
vertex(250, 250); //top left point
vertex(300, 250); //topright point
vertex(310, 300); //bottom right point x+10, y+50
endShape();
     
   fill(0); 
   ellipse(255, 160, 10,10); //eye
   ellipse(300,160,10,10); //eye
 
   stroke(0);
   line(230, 160, 260, 140); //left eyebrow
   line(320,160,290,140);    //right eyebrow
   strokeWeight(5);
  
   
}

void keyPressed(){
  if(key == 'o' || key == 'O'){
tt.y = 160;
//changing the y variable to where the i is
//it will always put tt back  

}
}
