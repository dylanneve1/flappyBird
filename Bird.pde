class Bird {
  
  float x = 100;
  float y = 250;
  
  float radius = 500/8; //Player radius based on screen.

  float gravity = 500/150; //Gravity pulling Player down based on screen.
  float bounce = 500/50;
  boolean isBounce = false;
  boolean bouncing = false;
  
  void caller() {
    show();
    bounce();
    gravity();
  }
  
  void show() {
    rectMode(CENTER);
    fill(#e57373);
    rect(x, y, 50, 50);
  }
  
  void gravity() //Add gravity to Player.
  {
    if (isBounce == false)
    {
      y += gravity; //Pull player towards bottom of the screen.
    }
  }
  
  void bounce()
  {
    if (bouncing == true) //If Player is in bouncing state.
    {
      isBounce = true; //Declare Player is bouncing.
      y -= bounce; //Bounce is added to Y.
      bounce -= 500/500; //Bounce speed is decreased over time.
      if (bounce <= 0) { //If the bounce arc is over.
        bouncing = false; //Player is no longer bouncing.
        isBounce = false; //Gravity resumes.
        bounce = 500/50; //Reset bounce value for next time.
      }
    }
  }
}
