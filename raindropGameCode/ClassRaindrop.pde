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

  Raindrop(float tX, float tY) {
    loc = new PVector(tX, tY);
    vel = new PVector(-1, 1);
    acc = new PVector(0, .05);
    diam = 20;
    input = new PVector();
  }

  void display() {
    fill(0, 100, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.add(vel);
    vel.add(acc);
    if (time <= 0) {
      vel.mult(0);
    }
  }



  void reset() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, 0);
  }


  boolean isInContactWith(Bucket b) {
    if (loc.dist(b.loc) < diam/2 + b.diam/2) {  //the distance between the loc PVector and the b.loc PVector (bucket b's loc) is less than the radius of a raindrop + the radius of bucket b
      println("it touch");
      return true;
    } else {
      return false;
    }
  }
}