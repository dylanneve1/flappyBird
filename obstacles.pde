class Obstacles
{

  float leftEdge;
  float rightEdge;

  float x = displayWidth*1.5;
  float topY = 0;

  float oWidth = displayWidth/5;
  float topoHeight = displayHeight/3;

  float botoHeight = displayHeight/3;

  float bottomY = displayHeight;

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
    rect(x, bottomY, oWidth, botoHeight*-1);
  }

  void slide()
  {
    x -= displayWidth/100;
    if (x <= 0)
    {
      x = displayWidth*1.5;
      topoHeight = random(0, displayHeight/2);
      botoHeight = random(topoHeight+displayHeight/6, displayHeight);
    }
  }

  void edgeDetect()
  {
    leftEdge = x;
    rightEdge = x + oWidth;
  }
}
