class subuh{
  int locX;
  int locY;
  
  PGraphics bg; 

  color bgColor = color(10);
  color lightColor = color(62, 84, 121);
  color darkColor = color(52, 61, 77);
  
  public subuh(int tlocX, int tlocY){
    locX = tlocX;
    locY = tlocY;
  }
  
  void subuhan(int locX, int locY){
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
        pg.fill(lightColor, n*map(y, 0, 2*height/3., 255, 0)); 
        pg.ellipse(x, y, 3, 3);
      }
  
      strokeWeight(3);
      pg.stroke(darkColor, map(y, 2*height/3, height, 0, 255));
      pg.line(width, y, width, y);
    }
    
    pg.endDraw();
    
    
  }


}
