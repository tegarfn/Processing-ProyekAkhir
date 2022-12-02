import java.lang.Runnable;

class Button {
  color buttonColor;
  color buttonHovered;
  Runnable buttonClicked;
  String buttonText;
  float x;
  float y;
  float width_;
  float height_;
  boolean isHovered;

  public Button(color buttonColor, color buttonHovered, Runnable buttonClicked, String buttonText, float x, float y, float width_, float height_) {
    this.buttonColor = buttonColor;
    this.buttonHovered = buttonHovered;
    this.buttonClicked = buttonClicked;
    this.buttonText = buttonText;
    this.x = x;
    this.y = y;
    this.width_ = width_;
    this.height_ = height_;
  }

  public Button(color buttonColor, Runnable buttonClicked, String buttonText, float x, float y, float width_, float height_) {
    this(buttonColor, buttonColor, buttonClicked, buttonText, x, y, width_, height_);
  }

  void display() {
    color colors = isHovered ?  buttonHovered:buttonColor;
    push();
    color strokeColor;
    if(brightness(colors)<35){
      strokeColor = color(240);
    }else{
      strokeColor = color(15);
    }
    strokeWeight(4);
    textSize(24);
    textAlign(CENTER);
    stroke(strokeColor);
    fill(colors);
    rect(x, y, width_, height_, 20);
    fill(strokeColor);
    text(buttonText, x+width_/2, y+height_/2+height_/4);
    pop();
  }
  
  void hovered( int mx, int my){
    if( mx > x && mx < x + width_  && my > y && my < y+height_){ 
      isHovered = true;
    } else {
      isHovered = false;
    }
  }
  
 void clicked( int mx, int my){
    if( mx > x && mx < x + width_  && my > y && my < y+height_){ 
      buttonClicked.run();
    }
  }
}

//int randomSeeds = int(random(0, 100));

//Button randomizeButton = new Button(#d771c5, #ac49b5, new Runnable() {
//   @Override
//     public void run() {
//     randomSeeds = int(random(0, 100));
//   }
//}, "Randomize", width,500, 200, 50);


void draw_rumah(float x, float y, int randomSeeds) {
  push();
  noStroke();
  fill(255);
  randomSeed(randomSeeds);
  //randomizeButton.display();
  //for(int i =0; i<100; i++){
  //  star(random(x-width, x+width), random(y-800, y-200), random(0.15, 0.4));
  //}
  fill(255);

  // translate(0, 0, -20);
  scale(0.9);
  for (float i = x-width; i< x+width*2; i+=110) {
    int randomHeight = int(random(200, 400));
    randomSkyScraper(i, y-(randomHeight-200), randomHeight, #362559);
  }
  translate(0, 0, -50);

  for (float i = x-width; i< (x+width+250)*2; i+=110) {
    int randomHeight = int(random(200, 400));
    randomSkyScraper(i, (y-100)-(randomHeight-200), randomHeight, #0c050e);
  }

  pop();
}

void randomSkyScraper(float x, float y, float height, color colors) {
  push();
  int skyScraper = int(random(0, 6.99));
  switch(skyScraper) {
  case 0:
    skyScraperOne(x, y, height, colors);
    break;
  case 1:
    skyScraperTwo(x, y, height, colors);
    break;
  case 2:
    skyScraperThree(x, y, height, colors);
    break;
  case 3:
    skyScraperFour(x, y, height, colors);
    break;
  case 4:
    skyScraperFive(x, y, height, colors);
    break;
  case 5:
    skyScraperSix(x, y, height, colors);
    break;
  case 6:
    skyScraperSeven(x, y, height, colors);
    break;
  }
  pop();
}

void skyScraperOne(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  rect(x-5, y-10, 110, 10);
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 15; j < 90; j+=20) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}

void skyScraperTwo(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  for (int i = 0; i < height-20; i+= 40) {
    rect(x-5, y+i, 110, 10);
  }
  for (int j = 10; j < 50; j+=15) {
    if (random(0, 1)>=0.5) {
      fill(255);
    } else {
      fill(#613f69);
    }
    rect(x+j, y+15, 10, height-25);
  }
  popStyle();
}

void skyScraperThree(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  if (random(0, 1)>=0.5) {
    triangle(x, y, x+100, y, x+100, y-height/4);
  } else {
    triangle(x+100, y, x, y, x, y-height/4);
  }
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 15; j < 90; j+=20) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}

void skyScraperFour(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  rectMode(CENTER);
  rect(x+50, y, 50, 50);
  rect(x+50, y-25, 60, 5);
  rect(x+50, y-25, 4, 80);
  circle(x+50, y-65, 8);
  ellipse(x+50, y+height/3, 120, 120);
  rectMode(CORNER);
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 15; j < 90; j+=20) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}

void skyScraperFive(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  triangle(x, y, x+100, y, x+50, y-height/4);
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 15; j < 90; j+=20) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}

void skyScraperSix(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 80, height);
  beginShape();
  vertex(x, y);
  vertex(x+80, y);
  vertex(x+45, y-height/4+10);
  vertex(x+35, y-height/4+10);
  endShape();

  for (int i = 40; i < height-20; i+= 40) {
    rect(x-10, y+i, 100, 10);
  }
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 10; j < 70; j+=25) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}

void skyScraperSeven(float x, float y, float height, color colors) {
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  rectMode(CENTER);
  rect(x+50, y, 50, 40);
  rect(x+50, y-20, 55, 5);
  rectMode(CORNER);
  for (int i = 20; i < height-20; i+= 20) {
    for (int j = 15; j < 90; j+=20) {
      if (random(0, 1)>=0.5) {
        fill(255);
      } else {
        fill(#613f69);
      }

      rect(x+j, y+i, 10, 10);
    }
  }
  popStyle();
}


void star(float x, float y, float scale) {
  push();
  float z = random(-75, -100);
  fill(#ffe5cf);
  translate(x, y);
  scale(scale, scale);
  beginShape();
  vertex(0, 40, z);
  vertex(20, 40, z);
  vertex(30, 20, z);
  vertex(40, 40, z);
  vertex(60, 40, z);
  vertex(45, 55, z);
  vertex(55, 80, z);
  vertex(30, 70, z);
  vertex(5, 80, z);
  vertex(15, 55, z);
  endShape();
  pop();
}

//void mouseMoved(){
//  randomizeButton.hovered(mouseX, mouseY);
//}

//void mouseClicked(){
//  randomizeButton.clicked(mouseX, mouseY);
//}