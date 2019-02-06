Snowflakes s;
ArrayList <Snowflakes> mySnow;

void setup(){
  size(600,600);
  s = new Snowflakes(random(0, width), 0);
  mySnow = new ArrayList<Snowflakes>();
}


void draw(){
  background(81,123,155);
  
  for(int i = 0; i<mySnow.size(); i++){
    Snowflakes s = mySnow.get(i); //gets the current position of the i, 
    //not the one we set up (original)
    s.display();
    s.fall();
     if(s.isAlive() == false){
       mySnow.remove(i); //shifts down
     }
  }
  if(frameCount % 10 == 0){
    mySnow.add(new Snowflakes(random(0,width), 0));
    
  }
  //s.display();
  //s.fall();
  //if(s.isAlive() == false){
  //}
}

//what is an array list?
