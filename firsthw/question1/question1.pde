//string array
//displayText function
//draw 4 circles //store circle positions in a position array
//calculate distance between the mouse n circles
//use a conditional to check if distance is withing the area of the circle
//change index position in the string array

//4 different buttons

String myStrings [] = {"u got the best advice but i wont call", "let's do it again", "loud tweets", "i should just move on"};
float xPos []= new float[4]; //for position of circles 
int size = 100;
int index = 0;

void setup(){
  size (600,600);
  float spacing = width/4;
  //width of canvas divided by the number of circles we have
  for(int i =0; i< 4; i++){
    xPos[i] = i*spacing + size* .75; //first i will be 0,
  }
}

void draw() {
  background(255);
  
    float spacing = width/4;

  
  for(int i = 0; i < 4; i++){
    
    if(dist(mouseX, mouseY, xPos[i], 100) <= size && mousePressed){
      index = i;
      println(i);
      fill(255);
    }else{
      fill(0);
    }
    ellipse(xPos[i], 100, size, size);
  }
  fill(0);
  text(myStrings[index], width/2-textWidth(myStrings[index])/2, height/2);
  
}
