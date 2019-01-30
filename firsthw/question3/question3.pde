//need a 2d array
//color
//size
//a conditional to see if we're 
//clicking on a square
//boolean 2d array
int num = 10; //refer to the number of rows & 
color c [][]; //two brackets in a row mean 2d array
boolean clicked [][];
int size;


void setup(){
  size(600,600);
  size = width/num; //this will be 60
  
  c = new color[num][num];
  clicked = new boolean [num][num];
  
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      c[i][j] = color(random(0,255), random(0,255),random(0,255));
      clicked[i][j] = false; //set boolean to false because we haven't clicked on it
    }
  }
}

void draw() {
  for(int i = 0; i<num; i++){
    for(int j = 0; j<num; j++){
      if(mouseX > i*size && mouseX<= (i+1)*size
      && mouseY>j*size && mouseY<= (j+1)*size
      && mousePressed){
       clicked[i][j] = true; 
      }
      if(clicked[i][j]){
    
      fill(c[i][j]);
      }else{
        fill(255);
      }
      rect(i*size, j*size, size, size);
    }
}
}
