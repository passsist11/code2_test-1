int cols, rows;

Bricks myBricks [][];

void setup(){
  size(500,500);
  cols = int(width/w);
  rows = int(height*.5/h);
  
  noStroke();
  
  myBricks = new Bricks[cols][rows];
  
  for(int i = 0; i<cols/; i++){
    for(int j = 0; j<rows; j++){
      myBricks[i][j] = new Bricks(i*w, j*h, w-10, h-10,
    }
  }
}
