PImage [] images;
boolean playing = false;
int currentImage = 0;  
  
void setup()
{
  images = loadImages("jpgs/movie",".jpg",134);
  size(images[0].width,images[0].height);

}

void draw()
{
      image(images[currentImage],0,0);
      if(playing){
      currentImage += 1; 
      if(currentImage >= images.length)
      {
        currentImage = 0;
      }
      image(images[currentImage],0,0);
      }
}

void mousePressed()
{
    playing = !playing;
}

void mouseDragged()
{
  
}
