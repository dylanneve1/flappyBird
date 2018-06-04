class deathHandler
{

  boolean dead = false;
  
  void caller()
  {
    collisionDetect();
    stateChanger();
  }

  void collisionDetect()
  {
  }

  void stateChanger()
  {
    if(dead == true)
    {
      m.deathScreen = true;
    }
  }
}
