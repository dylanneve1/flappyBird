class Obstacles
{

  float leftEdge;
  float rightEdge;
  float topBottomEdge;
  float bottomTopEdge;

  float x = displayWidth*1.5;
  float topY = 0;

  float oWidth = displayWidth/5;
  float topoHeight = displayHeight/3;

  float botoHeight = displayHeight/3*-1;

  float bottomY = displayHeight;

  //Obstacles()
  //{
  //  topX = displayWidth*1.5;
  //  topY = 0;

  //  bottomX = displayWidth*1.5;
  //  bottomY = displayHeight;
  //}

  void caller()
  {
    show();
    slide();
    edgeDetect();
  }

  void show()
  {
    fill(255);
    rect(x, topY, oWidth, topoHeight);
    rect(x, bottomY, oWidth, botoHeight);
  }

  void slide()
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
    }
  }

  void edgeDetect()
  {
    leftEdge = x;
    rightEdge = x + oWidth;
  }
}
