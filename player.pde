class Player //Init Player
{
  float x = displayWidth/2; //Player X based on screen.
  float y = displayHeight/2; //Player Y based on screen.

  float radius = displayWidth/5; //Player radius based on screen.

  void caller() //Class that will be called in main, calls all other functions.
  {
    show(); //Call function that shows Player on screen.
  }

  void show() //Shows the player on screen.
  {
    fill(0); //Make Player white.
    ellipse(x, y, radius, radius); //Draw Player.
  }
}