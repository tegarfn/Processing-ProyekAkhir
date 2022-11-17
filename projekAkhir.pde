int speed = 5000;

void setup() {
    size(1920, 1080);
}

void draw() {
    background(100);
    translate(width/2, height/2);
    noFill();
    noStroke();

    kepala(speed,0);
    gerbong(speed+500,0);
    gerbong(speed+1000,0);
    gerbong(speed+1500,0);
    gerbong(speed+2000,0);


    if(speed < -10000){
        speed = 5000;
    }else{
        speed -= 100;   

    }
}

void gerbong(int locX, int locY){
    fill(240);
    rect(locX,locY,480,120,35,35,10,10);
    fill(100);
    rect(locX+40,locY+20,320,40,5);
    fill(0,200,225);
    for(int i = 45; i < 320; i += 45){
        rect(locX+i,locY+25,40,30,5);
    }
    fill(0,0,255);
    rect(locX,locY+95,480,25,0,0,10,10);
    strokeCap(SQUARE);
    strokeWeight(8);
    stroke(255,0,0);
    line(locX,locY+80,locX+480,locY+80);
    noStroke();
    fill(50,50,50,30);
    rect(locX+375,locY+20,50,100,5);
    fill(0,200,225);
    rect(locX+380,locY+25,40,30,5);
    fill(50);
    rect(locX+480,locY+100,20,10);
}

void kepala(int locX, int locY){
    fill(240);
    rect(locX,locY+75,10,10);

    beginShape();
    vertex(locX+160,locY);
    vertex(locX+160,locY+120);
    vertex(locX+10,locY+120);
    vertex(locX,locY+110);
    vertex(locX,locY+75);
    bezierVertex(locX, locY+50, locX+100, locY, locX+160, locY);
    endShape();

    beginShape();
    fill(0,200,225);
    vertex(locX+140,locY+20);
    vertex(locX+140,locY+65);
    vertex(locX+40,locY+65);
    bezierVertex(locX+40,locY+55,locX+110,locY+20,locX+140,locY+20);
    endShape();

    fill(240);
    rect(locX+160,locY,320,120,0,35,10,10);
    fill(100);
    rect(locX+240,locY+20,185,40,5);
    fill(0,200,225);
    for(int i = 245; i < 400; i += 45){
        rect(locX+i,locY+25,40,30,5);
    }
    fill(0,0,255);
    rect(locX,locY+95,480,25,0,0,10,10);
    strokeCap(SQUARE);
    strokeWeight(8);
    stroke(255,0,0);
    line(locX,locY+80,locX+480,locY+80);
    noStroke();
    fill(50,50,50,30);
    rect(locX+175,locY+20,50,100,5);
    fill(0,200,225);
    rect(locX+180,locY+25,40,30,5);
    fill(50);
    rect(locX+480,locY+100,20,10);
}

void 