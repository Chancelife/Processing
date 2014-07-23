  PImage img;

void setup()
{
   img = loadImage("1.jpg");
  size(img.width/2,img.height/2);

  //(file,X,Y,width,height)
}

void draw()
{ 
  int imgheight = 100*img.height/img.width;
  imageMode(CENTER);
  image(img,mouseX,mouseY,100,imgheight);
}

void mouseDragged()
{
  println("Hey!");
 }
