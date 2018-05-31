Player p; //Import Player.
Modes m; //Import modes.

PImage background; //Create background PImage.
PImage ship; //Create ship PImage.

void setup()
{
  ship = loadImage("ship.png");
  background = loadImage("nomnom.jpg"); //load background image.
  m = new Modes(); //Init imported modes.
  p = new Player(); //Init imported Player.
  size(displayWidth, displayHeight, P2D); //Set game resolution based on screen.
  orientation(PORTRAIT); //Force portrait.
}

void draw()
{
  m.caller(); //Call Player caller.
}

void mousePressed()
{
  p.bouncing = true;
}
