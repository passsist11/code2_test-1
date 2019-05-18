class Ball {
  float x, y;
  float r;
  float g;
  float speedx, speedy;
  color c;
  
  Ball() {
    x = random(width);
    y = random(height/2);
    r = 10; 
    g = random(0.01, 0.04);
    speedx = random(-1, 1);
    speedy = 0;
    c = color(random(255), random(255), random(255));
  }
  

  void update() {
    x = x + speedx;
    y = y + speedy;
    
    speedy = speedy + g; 
    
    if (x > width - r ) { 
      x = width -r;
      speedx *= -1;
    } else if( x < r) {
      x = r;
      speedx *= -1;
    }
    
    if (y > height - r) {
      y = height - r;
      speedy *= -1;
    } else if ( y < r) {
      y = r;
      speedy *= -1;
    }
    

  }
  
  void display() {

    noStroke();
    fill(c);
    ellipse(x, y, r * 2, r * 2);
  }
}
