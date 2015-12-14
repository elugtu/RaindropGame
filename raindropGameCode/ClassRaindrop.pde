class Raindrop {
  PVector loc, vel, acc, input;
  int diam;
  
 
  /*
  Raindrop(){
    loc = new PVector(random(width), 0);
    vel = new PVector(-1, 1); 
    acc = new PVector(0, .1);
    diam = 20;
    mouse = new PVector();
  }
  */
  
  Raindrop(float tX, float tY){
    loc = new PVector(tX, tY);
    vel = new PVector(-1, 1);
    acc = new PVector(0, .1);
    diam = 20;
    input = new PVector();
  }
  
  void display(){
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void fall(){
    loc.add(vel);
    vel.add(acc);
  }
  
  
/*  
  void reset(){
    loc = new PVector(random(width), 0);
  }
 
  
  boolean isInContactWith(PVector tLoc){
    tLoc = input;
    input.set(mouseX, mouseY);
    if(input.dist(loc) < diam/2){
      return true;
    } else {
      return false;
    }
    

    
  }
  
  */
  
  
}