class Obstycles {
  
  float topBarX = 600;
  float bottomBarX = 600;
  
  float topBarY = 0;
  float bottomBarY = 500;
  
  float topBarLength = 100;
  float bottomBarLength = -100;
  float measurer = 0;
  
  void caller() {
    showTopBar();
    showBottomBar();
    move();
    text(measurer, 250, 100);
  }
  
  void move() {
    topBarX -= 5;
    bottomBarX -= 5;
    
    if(topBarX <= -50) {
      topBarX = 600;
      bottomBarX = 600;
      bottomBarLength = random(-350, -50);
      measurer = 500 - (bottomBarLength * -1);
      topBarLength = measurer - 150;
    }
  }
  
  void showTopBar() {
    fill(255);
    rectMode(CORNER);
    rect(topBarX, topBarY, 50, topBarLength);
  }
  
  void showBottomBar() {
    fill(255);
    rectMode(CORNER);
    rect(bottomBarX, bottomBarY, 50, bottomBarLength);
  }
  
}
