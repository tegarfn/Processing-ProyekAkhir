class vas{
  int locX = 0;
  int locY = 0;
  
  public vas(int tlocX, int tlocY){
    locX = tlocX;
    locY = tlocY;
  }
  
  void vasbunga(int locX, int locY){
    rect(locX-100,locY-300,200,400);
    stroke(0);
    ellipse(locX,locY-300,200,100);
    
    noStroke();
    rect(locX-150, locY-230, 300,500,150);
  }
  
}
