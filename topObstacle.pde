class topObstacle
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5;

  float w = displayWidth/5;
  float h = displayHeight/3;

  float y = displayHeight;

  void caller()
  {
    show();
    slide();
    edgeDetect();
  }

  void show()
  {
    fill(255);
    rect(x, y, w, h);
  }

  void slide()
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
      h = random(0, displayHeight*0.8);
    }
  }

  void edgeDetect()
  {
    leftEdge = x;
    rightEdge = x + w;
  }
}
