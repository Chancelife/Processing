void setup(){
  //called once and first
  println("setup");
  //frameRate(1);//wait every 1second
  size(500,500);
  //background(000);
}

void draw(){
   //2nd and repeated 
   println("draw");
   
   //ellipse(mouseX,mouseY,50,50);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
