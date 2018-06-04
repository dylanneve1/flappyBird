class deathHandler //This class is for handling player deaths.
{

  boolean dead = false; //Is player dead?
  
  void caller() //Call functions of class.
  {
    collisionDetect();
    stateChanger();
  }

  void collisionDetect() //Check if player has hit an obstacle.
  {
  }

  void stateChanger() //Check if dead, if true stop playing.
  {
    if(dead == true)
    {
      m.deathScreen = true;
    }
  }
}
