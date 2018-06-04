class Modes //This class is for switching between menu/game etc.
{
  boolean playing = true; //If player playing?

  void caller()
  {
    if (playing == true)
    {
      game(); //If player is playing then call game mode.
    }
  }

  void game() //Game mode.
  {
    imageMode(CORNER); //Set image mode to corner.
    image(background, 0, 0, displayWidth, displayHeight); //Draw background image.
    p.caller(); //Call player entity.
    bo.caller();
    to.caller();
  }
}
