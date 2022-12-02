class air{
  int locX;
  int locY;
  
  public air(int tlocX, int tlocY){
    locX = tlocX;
    locY = tlocY;
  }
  
  void mengalir(int locX, int locY){
    noStroke();
    fill(#5A30FF);
    rect(locX-640,locY+200,2000,300); 
  }
  
}
