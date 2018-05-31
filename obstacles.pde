class Obstacles
{

  float topX = displayWidth*1.5;
  float topY = 0;
  
  float oWidth = displayWidth/5;
  float topoHeight = displayHeight/3;
  
  float botoHeight = displayHeight/3*-1;
  
  float bottomX = displayWidth*1.5;
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
  }
  
  void show()
  {
    fill(255);
    rect(topX, topY, oWidth, topoHeight);
    rect(bottomX, bottomY, oWidth, botoHeight);
  }
  
  void slide()
  {
    topX -= displayWidth/100;
    if(topX <= 0)
    {
      topX = displayWidth*1.5;
    }
    bottomX -= displayWidth/100;
    if(bottomX <= 0)
    {
      bottomX = displayWidth*1.5;
    }
  }
}
