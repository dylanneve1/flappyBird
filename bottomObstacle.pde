class bottomObstacle
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5;
  float y = displayHeight;

  float w = displayWidth/5;

  float h = displayHeight/3;

  void caller()
  {
    show();
    slide();
    edgeDetect();
  }

  void show()
  {
    fill(255);
    rect(x, y, w, h*-1);
  }

  void slide()
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
      h = displayHeight - to.h - displayHeight*0.23;
    }
  }

  void edgeDetect()
  {
    leftEdge = x;
    rightEdge = x + w;
  }
}
