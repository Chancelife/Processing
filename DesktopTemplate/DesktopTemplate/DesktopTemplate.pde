//The MIT License (MIT) - See Licence.txt for details
//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies
//Desktop Template
Maxim maxim;
AudioPlayer player;
float ratio;
boolean playing = false;

void setup()
{
  maxim = new Maxim(this);
  player = maxim.loadFile("mykbeat.wav");
  size(640, 480);
  
  player.setLooping(false);
}

void draw()
{
  ratio = (float)mouseX / (float)width;
  ratio *= 2;
  if(playing)
  {
    fill(0,255,0);
  }
  else{
    fill(0,255,255);
  }
  rect(0,0,width,height/2);
}

void mouseDragged()
{
    
  if(mouseY > height/2)
  {
  player.speed(ratio);
  println(ratio);
  fill(ratio*128);
  }
  
  rect(0,height/2,width,height/2);
}

void mousePressed()
{
    player.cue(0);

    if(mouseY < height/2)
    {
        playing = !playing;
        if(playing){
          player.play();
        }
        else{
          player.stop();
        }
    }    
// code that happens when the mouse button
// is pressed
}

void mouseReleased()
{
// code that happens when the mouse button
// is released
}

