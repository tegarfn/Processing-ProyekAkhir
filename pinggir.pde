class pinggir{
  int locX;
  int locY;
  
  public pinggir(int tlocX, int tlocY){
    locX = tlocX;
    locY = tlocY;
  }
  
  void tanah(int locX, int locY){
    noStroke();
    fill(#251E40);
    
    beginShape();
    curveVertex(locX-250, locY+170);
    curveVertex(locX-250, locY+170);
    
    curveVertex(locX-50, locY+200);
    curveVertex(locX, locY+250);
    curveVertex(locX+50, locY+270);
    curveVertex(locX+20, locY+280);
    curveVertex(locX-100, locY+290);
    curveVertex(locX-200, locY+300);
    
    curveVertex(locX-640, locY+360);
    curveVertex(locX-640, locY+360);

    endShape();
    
    
    beginShape();
    curveVertex(locX+640, locY+100);
    curveVertex(locX+640, locY+100);
    
    curveVertex(locX+600, locY+120);
    curveVertex(locX+570, locY+130);
    curveVertex(locX+550, locY+150);
    curveVertex(locX+500, locY+170);
    curveVertex(locX+450, locY+200);
    curveVertex(locX+350, locY+230);
    curveVertex(locX+300, locY+250);
    curveVertex(locX+100, locY+280);
    curveVertex(locX+0, locY+300);
    curveVertex(locX-100, locY+360);
    
    curveVertex(locX+640, locY+360);
    curveVertex(locX+640, locY+360);

    endShape(CLOSE);
  }
  
}
