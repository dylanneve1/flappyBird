class bottomObstacle //Class for bottom obstacle.
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5;
  float y = displayHeight;

  float w = displayWidth/5;

  float h = displayHeight/3;

  void caller() //Call functions of class.
  {
    show();
    slide();
    edgeDetect();
  }

  void show() //Draw bottom obstacle on screen.
  {
    fill(255);
    rect(x, y, w, h*-1);
  }

  void slide() //Slide with top obstacle.
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
    }
  }

  void edgeDetect() //Set a value for edges to make life simpler.
  {
    leftEdge = x;
    rightEdge = x + w;
  }
}
