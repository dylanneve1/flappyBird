Player p; //Import Player.

PImage background; //Create background PImage.
PImage ship; //Create ship PImage.

void setup()
{
  ship = loadImage("ship.png");
  background = loadImage("nomnom.jpg"); //load background image.
  p = new Player(); //Init imported Player.
  size(displayWidth, displayHeight, P2D); //Set game resolution based on screen.
  orientation(PORTRAIT); //Force portrait.
}

void draw()
{
  imageMode(CORNER);
  image(background, 0, 0, displayWidth, displayHeight);
  p.caller(); //Call Player caller.
}

void mousePressed()
{
  p.bouncing = true;
}
