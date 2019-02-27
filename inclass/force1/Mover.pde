class Mover{
  PVector position, velocity, acceleration;
  float mass;
  
  Mover(float m, float x, float y){
    mass = m;
    position = new PVector(x,y);
    velocity = new PVector(1,0);
    acceleration = new PVector (0,0);
  }
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
void update(){//to update position
  position.add(acceleration);
  position.add(velocity);
  acceleration.mult(0);
  
}
  void display(){
    
    ellipse(position.x, position.y, 50,50);
  }
}
