class Modes //This class is for switching between menu/game etc.
{
  boolean playing = true;

  void caller()
  {
    if (playing == true)
    {
      game();
    }
  }

  void game()
  {
    imageMode(CORNER);
    image(background, 0, 0, displayWidth, displayHeight);
    p.caller();
  }
}
