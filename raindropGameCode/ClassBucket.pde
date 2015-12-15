class Bucket{
 int diam; 
 PVector loc;
 color c;
  
 Bucket(int tDiam){
   diam = tDiam;
   loc = new PVector(mouseX, mouseY);
   c = color(0);
 }
  
 void display(){
   fill(c);
   loc.set(mouseX, mouseY);
   ellipse(loc.x, loc.y, diam, diam);
 }
}