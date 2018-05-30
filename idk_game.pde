Player p; //Import Player.

void setup()
{
  p = new Player(); //Init imported Player.
  size(displayWidth, displayHeight, P2D); //Set game resolution based on screen.
}

void draw()
{
  background(150); //Create background.
  p.caller(); //Call Player caller.
}