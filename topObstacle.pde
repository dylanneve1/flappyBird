class topObstacle //Class for top obstacle.
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5;

  float w = displayWidth/5;
  float h = displayHeight/3;

  float y = 0;

  void caller() //Call funtions of class.
  {
    show();
    slide();
    edgeDetect();
  }

  void show() //Draw top obstacle on screen.
  {
    fill(255);
    rect(x, y, w, h);
  }

  void slide() //Slide along screen left with bottom obstacle.
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
      h = random(0, displayHeight*0.8);
      bo.h = displayHeight - to.h - displayHeight*0.23;
    }
  }

  void edgeDetect() //Set a value for edges to make life simpler.
  {
    leftEdge = x;
    rightEdge = x + w;
  }
}
