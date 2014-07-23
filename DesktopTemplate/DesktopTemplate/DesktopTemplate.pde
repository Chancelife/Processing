//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies

//Desktop Template
Maxim maxim;
AudioPlayer player;

void setup()
{
  maxim = new Maxim(this);
  player = maxim.loadFile("mykbeat.wav");
  size(640, 960);
  
  background(128);


}

void draw()
{
// code that happens every frame
}

void mouseDragged()
{
  point(mouseX,mouseY);
// code that happens when the mouse moves
// with the button down
}

void mousePressed()
{
  player.play();
// code that happens when the mouse button
// is pressed
}

void mouseReleased()
{
// code that happens when the mouse button
// is released
}

