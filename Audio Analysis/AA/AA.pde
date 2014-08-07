AudioPlayer player;
Maxim maxim;
float[] spec;

void setup()
{
    size(640, 480);
    maxim = new Maxim(this);
    player = maxim.loadFile("Tell Your World.wav");
    player.setAnalysing(true);
}

void draw()
{
  int r,g,b;
  float spped;
  float pow;
  player.play();
  background(0);
  spec = player.getPowerSpectrum();
  if(spec!=null){
    for(int i=0;i<spec.length;i++){

      fill(0,255,255*spec[i]);
      rect(0,i,spec[i]*width,2);
    }
  }

  //pow = player.getAveragePower();
  //fill(pow*255,0,0);
  //rect(0,0,pow*width,height);

}

void mousePressed()
{
  
}
