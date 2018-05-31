class Obstacles
{

  float topX = displayWidth*1.5;
  float topY = 0;
  
  float oWidth = displayWidth/5;
  float oHeight = displayHeight/3;
  
  float bottomX;
  float bottomY;

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
  }
  
  void show()
  {
    fill(255);
    rect(topX, topY, oWidth, oHeight);
  }
  
  void slide()
  {
    topX -= displayWidth/100;
    if(topX <= 0)
    {
      topX = displayWidth*1.5;
    }
  }
}
