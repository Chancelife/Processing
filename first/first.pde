Maxim maxim;
AudioPlayer player;

void setup(){
  maxim = new Maxim(this);
  player = maxim.loadFile("Hebe.mp3");
  player.setLooping(false);
  
}

void draw(){
  
}

void mousePressed(){
    player.cue(0);
    player.play();
}
