class Snowflakes{
  //position
  //color
  //shape
  //opacity
  float x, y;
  color c;
  int o = 255;
  float gravity;
  float size;
  
  
  Snowflakes(float _x, float _y){
    
    x = _x;
    y = _y;
   
    size = random(5,15);
    gravity = random(1,3);
  }
  
  void display() { //you cant have more than one void draw
  fill(255,o);
  ellipse(x, y, size, size);
  }
  
  void fall(){
    y+=gravity;
    o --;
  }
  //fall
  boolean isAlive(){
    //if my opacity is greater than 5 i want to return this false
    //otherwise i want to return it as true
    if(y<height){ //if y position is less than white of the screen, it will stay alive, 
      return true;
    }else{
      return false; //otherwise it will say false
    }
  }
//gravity
//opacity

//boolean function to check if our snowflake is alive
  
}
