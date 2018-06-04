Player p; //Import Player.
Modes m; //Import modes.
deathHandler dHandler; //Import death handler.
bottomObstacle bo; //Import bottom obstacle.
topObstacle to; //Import top obstacle.

PImage background; //Create background PImage.
PImage ship; //Create ship PImage.

void setup()
{
  ship = loadImage("ship.png"); //Load image for player.
  background = loadImage("nomnom.jpg"); //load background image.
  m = new Modes(); //Init imported modes.
  p = new Player(); //Init imported Player.
  dHandler = new deathHandler(); //Init imported death handler.
  bo = new bottomObstacle(); //Init bottom obstacle.
  to = new topObstacle(); //Init top obstacle.
  size(displayWidth, displayHeight, P2D); //Set game resolution based on screen.
  orientation(PORTRAIT); //Force portrait.
}

void draw() //Main function.
{
  m.caller(); //Call Player caller.
}

void mousePressed() //If the mouse is pressed.
{
  p.bouncing = true; //Declare that ball is to bounce.
}
