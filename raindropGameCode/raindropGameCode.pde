ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();

PVector mouse;   //declare a P
Bucket b;
int score = 0;
int finalScore = score;
int time = 1000;
int fill = 0;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();    //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(random(width), 0));
  b = new Bucket(50);
  textAlign(CENTER);
}

void draw() {
  println(raindrops.size());
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  raindrops.add(new Raindrop(random(width), 0));
  text("Score: " + score, width/2, height/2);

  for (int i = raindrops.size()-1; i >= 0; i--) {
    Raindrop r = raindrops.get(i);
    r.display();
    r.fall();
    if (fill <= 100 && r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      raindrops.remove(i);
      score += 1;
      fill += 1;

      r.reset();       //if it is, reset the raindrop
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      raindrops.remove(i);
      r.reset();                           //if it does, reset the raindrop
    }
  }
  b.display();

  time--; 
  text("Time: " + time, width/2, height/2 + 30);

  if (time <= 0) {
    time = 0;
    text("GAME OVER", width/2, 100);
  }
  
  if (fill >= 100) {
    text("Bucket full! Click to pour!", width/2, height/2 + 40);
  }
  
  text(fill, width/2, height/2 + 60);
  
}

void mousePressed() {
  fill = 0;
}