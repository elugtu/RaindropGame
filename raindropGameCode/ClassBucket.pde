class Bucket{
 int diam; 
 PVector loc;
 color empty; 
 color full;
  
 Bucket(int tDiam){
   diam = tDiam;
   loc = new PVector(mouseX, mouseY);
   empty = color(50, 50, 50);
   full = color(0, 10, 255);
 }
  
 void display(){
   fill(lerpColor(empty, full, fill/20));
   loc.set(mouseX, mouseY);
   ellipse(loc.x, loc.y, diam, diam);
 }
}