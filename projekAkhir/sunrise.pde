class sunrise{
  int locX;
  int locY;
  
  PGraphics bg; 

  color bgColor = color(62, 84, 121);
  color lightColor = color(255);
  color darkColor = color(247, 183, 62);
  
  public sunrise(int tlocX, int tlocY){
    locX = tlocX;
    locY = tlocY;
  }
  
  void pagihari(int locX, int locY){
    bg = createGraphics(width, height);
    generateSky(bg);
    tint(255);
    image(bg, locX, locY);
  }
  
  void generateSky(PGraphics pg){
    pg.beginDraw();
    pg.background(bgColor);
    
    for (int y = 0; y < height; y += 2){
      for (int x = 0; x < width; x += 2){
        float n = noise(x/200., y/50.);     
        pg.noStroke();
        pg.fill(darkColor, n*map(y, 0, 2*height/3., 255, 0)); 
        pg.ellipse(x, y, 3, 3);
      }
  
      strokeWeight(3);
      pg.stroke(lightColor, map(y, 2*height/3, height, 0, 255));
      pg.line(width, y, width, y);
    }
    
    pg.endDraw();
    
    
  }


}
