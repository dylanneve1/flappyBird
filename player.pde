class Player //Init Player
{
  float x = displayWidth/4; //Player X based on screen.
  float y = displayHeight/3; //Player Y based on screen.

  float radius = displayWidth/8; //Player radius based on screen.

  float gravity = displayHeight/150; //Gravity pulling Player down based on screen.
  float bounce = displayHeight/50;
  boolean isBounce = false;
  boolean bouncing = false;

  void caller() //Class that will be called in main, calls all other functions.
  {
    show(); //Call function that shows Player on screen.
    gravity(); //Calls funtion that adds gravity.
    reset();
    bounce(); //Let you stop the Player dying.
    restrict(); //Call restrict function.
  }

  void show() //Shows the player on screen.
  {
    imageMode(CENTER);
    fill(0); //Make Player white.
    //ellipse(x, y, radius, radius); //Draw Player.
    image(ship, x, y, radius*1.5, radius);
  }

  void gravity() //Add gravity to Player.
  {
    if (isBounce == false)
    {
      y += gravity; //Pull player towards bottom of the screen.
    }
  }

  void reset() //Just for my own testing.
  {
    if (y >= displayHeight)
    {
      y = displayHeight/2;
    }
  }

  void bounce()
  {
    if (bouncing == true) //If Player is in bouncing state.
    {
      isBounce = true; //Declare Player is bouncing.
      y -= bounce; //Bounce is added to Y.
      bounce -= displayHeight/500; //Bounce speed is decreased over time.
      if (bounce <= 0) { //If the bounce arc is over.
        bouncing = false; //Player is no longer bouncing.
        isBounce = false; //Gravity resumes.
        bounce = displayHeight/50; //Reset bounce value for next time.
      }
    }
  }

  void restrict() //Stop player going out of bounds.
  {
    if (y <= -1)
    {
      y = 0; //Y cannot be less than 0.
    }
  }
}
