PImage [] images;
boolean playing = false;
int currentImage = 0;  
  
void setup()
{
  images = loadImages("jpgs/movie",".jpg",4);
  size(images[0].width/10,images[0].height/10);

}

void draw()
{
    image(images[currentImage],0,0,images[0].width/2,images[0].height/2);
    currentImage += 1; 
    if(currentImage >= images.length)
    {
      currentImage = 0;
    }
}

void mousePressed()
{

    
}
