class Events {

  void caller() {
    scoreHandler();
  }
  
  void scoreHandler() {
    if(b.x > o.bottomBarX && b.hasPassedThisRespawn == false) {
      b.hasPassedThisRespawn = true;
      b.score += 1;
    }
  }

}
