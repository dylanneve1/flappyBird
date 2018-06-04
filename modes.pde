class Modes //This class is for switching between menu/game etc.
{
  boolean deathScreen = false; //Is player dead?
  boolean playing = true; //If player playing?

  void caller()
  {
    if (playing == true)
    {
      game(); //If player is playing then call game mode.
    }
    if (deathScreen == true)
    {
      deathScreenShow(); //If player is dead then call death screen.
    }
  }

  void game() //Game mode.
  {
    imageMode(CORNER); //Set image mode to corner.
    image(background, 0, 0, displayWidth, displayHeight); //Draw background image.
    p.caller(); //Call player entity.
    dHandler.caller(); //Call death handler.
    bo.caller(); //Call bottom obstacle.
    to.caller(); //Call top obstacle.
  }

  void deathScreenShow() //Death screen.
  {
  }
}
