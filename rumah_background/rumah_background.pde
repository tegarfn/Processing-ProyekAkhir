
void setup() {
    size(1280,720,P3D);
    smooth(4);
}

void draw() {
    noStroke();
    background(0);
    fill(255);
    randomSeed(20);
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    
    push();
    fill(255);
    
    translate(0, 0, -50);
    scale(0.9);
    for(int i = -100; i< width+200; i+=110){
      int randomHeight = int(random(200, 400));
      randomSkyScraper(i, 400-(randomHeight-200), randomHeight, #2a112e);
    }
    translate(0, 0, -20);
    
    for(int i = -150; i< width+250; i+=110){
      int randomHeight = int(random(200, 400));
      randomSkyScraper(i, 300-(randomHeight-200), randomHeight, #0c050e);
    }
    
    pop();
    
    fill(255);
    text("mouse at : (" + mouseX + "," + mouseY + ")", mouseX + 30, mouseY);
    fill(get(mouseX, mouseY));
    strokeWeight(1);
    stroke(0);
    rect(mouseX + 30, mouseY - 30, 20, 20);
}

void randomSkyScraper(float x, float y, float height, color colors){
  int skyScraper = int(random(0,6.99));
  switch(skyScraper){
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
}

void skyScraperOne(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  rect(x-5, y-10, 110, 10);
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 15; j < 90; j+=20){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
    }
  }
  popStyle();
}

void skyScraperTwo(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  for(int i = 0; i < height-20; i+= 40){
    rect(x-5, y+i, 110, 10);
  }
  for(int j = 10; j < 50; j+=15){
    if(random(0,1)>=0.5){
      fill(255);
    }else{
      fill(#613f69);
    }
    rect(x+j,y+15, 10, height-25);
  }
  popStyle();
}

void skyScraperThree(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  if(random(0,1)>=0.5){
    triangle(x, y, x+100, y, x+100, y-height/4);
  }else{
    triangle(x+100, y,x, y,  x, y-height/4);
  }
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 15; j < 90; j+=20){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
    }
  }
  popStyle();
}

void skyScraperFour(float x, float y, float height, color colors){
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
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 15; j < 90; j+=20){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
    }
  }
  popStyle();
}

void skyScraperFive(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  triangle(x, y, x+100, y, x+50, y-height/4);
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 15; j < 90; j+=20){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
    }
  }
  popStyle();
}

void skyScraperSix(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 80, height);
  beginShape();
  vertex(x,y);
  vertex(x+80, y);
  vertex(x+45, y-height/4+10);
  vertex(x+35, y-height/4+10);
  endShape();
  
    for(int i = 40; i < height-20; i+= 40){
    rect(x-10, y+i, 100, 10);
  }
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 10; j < 70; j+=25){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
    }
  }
  popStyle();
}

void skyScraperSeven(float x, float y, float height, color colors){
  pushStyle();
  fill(colors);
  rect(x, y, 100, height);
  rectMode(CENTER);
  rect(x+50, y, 50, 40);
  rect(x+50, y-20, 55, 5);
  rectMode(CORNER);
  for(int i = 20; i < height-20; i+= 20){
    for(int j = 15; j < 90; j+=20){
      if(random(0,1)>=0.5){
        fill(255);
      }else{
        fill(#613f69);
      }
      
      rect(x+j,y+i, 10, 10); 
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
