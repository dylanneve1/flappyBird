Player p; //Import Player.
Modes m; //Import modes.
Obstacles o;

//Obstacles[] o = new Obstacles[10]; //Import 10 obstacles.

PImage background; //Create background PImage.
PImage ship; //Create ship PImage.

void setup()
{
  ship = loadImage("ship.png");
  background = loadImage("nomnom.jpg"); //load background image.
  m = new Modes(); //Init imported modes.
  p = new Player(); //Init imported Player.
  o = new Obstacles();
  //for (int i = 0; i < o.length; i++) {
  //  o[i] = new Obstacles();
  //}
  size(displayWidth, displayHeight, P2D); //Set game resolution based on screen.
  orientation(PORTRAIT); //Force portrait.
}

void draw()
{
  m.caller(); //Call Player caller.
}

void mousePressed() //If the mouse is pressed.
{
  p.bouncing = true; //Declare that ball is to bounce.
}
