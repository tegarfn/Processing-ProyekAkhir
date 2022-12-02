import processing.sound.*;
SoundFile file;
PImage img;
PFont teks;

air air = new air(0,0);
pinggir pgr = new pinggir(0,0);
kereta krt = new kereta(0,0,0);
rumah rmh = new rumah(0,0,2);
kota kt = new kota(0,0);
tower tw = new tower(0,0,0,0);

int speed = 5000;
int posZ = 50;
color c = color(#7B52AB);
boolean isParallax = false;

int stateMoon = 1;
float sclMoon = 100;
boolean conMoon = false;
color val = color(250,200,50);

int stateMun = 1;
boolean conMun = false;
int mX = 2000;
int mY = 2000;

int stateCat = 1;
int cX = 2000;
int cY = 2000;
boolean conCatt = false;

void setup() {
    size(1280,720,P3D);
    teks = createFont("assets/Caveat-Bold.ttf",32);
    file = new SoundFile(this, "assets/sound.mp3");
    file.loop();
    img = loadImage("assets/munir.jpg");
}

void draw() {
    background(#25064C);
    translate(width/2,height/2,0);
    parallax();

    translate(0,0,-300);
    pushMatrix();
        moon();
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        scale(1);
        kt.town1(-960,470);
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        scale(0.95);
        kt.town2(-960,390);
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        scale(0.95);
        kt.town3(-960,490);
        translate(0,0,25);
        draw_rumah(-width/2,60, 11);
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        scale(0.15);
        for(int i = -5000; i <= 5000; i += 500){
            kt.rsRoad(i,1400);
        }
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        air.mengalir(0,0);
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        scale(1.1);
        pgr.tanah(0,-5);
    popMatrix();

    translate(0,0,posZ);
    pushMatrix();
        fill(0);
        strokeWeight(1);
        translate(0,200);
        scale(0.25);
        noFill();
        noStroke();

        krt.head(speed,-300);

        // membuat 5 gerbong
        for(int i = 500; i <= 2500; i += 500){
            krt.cart(speed+i,-300);
        }

        // mengatur kecepatan dan perulangan kereta
        if(speed < -35000){
            speed = 5000;
        }else{
            speed -= 50;
        }
        
        // rel kereta
        for(int i = -5000; i <= 3000; i += 500){
            krt.railway(i,-150);
        }

        // nampilin poster
        translate(0,0,posZ);
        image(img,-75,185,50,75);
    popMatrix();
    

    translate(0,0,posZ);
    pushMatrix();
        scale(0.5);
        rmh.home(-900,525); 
    popMatrix();

    pushMatrix();
        scale(0.35);
        rmh.person(-375,250,0);
    popMatrix();
    
    translate(0,0,posZ/2);
    pushMatrix();
        scale(0.1);
        rmh.kucing(-4000,900,0); 
    popMatrix();

    // nampilin koordinat
    // textSize(32);
    // text(mouseX,-500,-250);
    // text(mouseY,-425,-250);

    translate(0,0,posZ);
    textFont(teks);
    fill(255);
    text("Lofi At 3:00 Am - Downtown",-150,0);
    // interactive object
    translate(0,0,posZ);
    caty();
    translate(0,0,posZ);
    mun();

    // 3D tower
    pushMatrix();
        scale(0.7);
        translate(750,300,-700);
        tw.empire(0,0,0,c);
    popMatrix();
    
}

void moon(){
    int mX = 500;
    int mY = -250;

    noStroke();
    fill(250,200,50);
    if(sclMoon > 5000){
      sclMoon = 5000;
    }else if(sclMoon < 100){
      sclMoon = 100;
    }
    circle(mX, mY, sclMoon);
    translate(0,0,1);
    fill(val);
    circle(mX, mY, 100);
    actMoon();
}

void actMoon(){
    if(conMoon == true){
        sclMoon += 100;
        val = color(#25064C);
        c = color(#7B52AB);
    }else if(conMoon == false){
        sclMoon -= 100;
        val = color(250,200,50);
        c = color(0);
    }
}

void caty(){
    fill(0,0,0,150);
    rect(-960,-360,cX,cY);
    actCat();
}

void mun(){
    fill(0,0,0,150);
    rect(-960,-360,mX,mY);
    actMun();
}

void actCat(){
    if(conCatt == true){
        rmh.kucing(0,-80,0);
        cX = 2000;
        cY = 2000;
    }else if(conCatt == false){
        cX = 0;
        cY = 0;
    }
}

void actMun(){
    if(conMun == true){
        translate(0,0,1);
        image(img,-150,-200,300,400);
        mX = 2000;
        mY = 2000;
    }else if(conMun == false){
        mX = 0;
        mY = 0;
    }
}

void parallax(){
    if(keyPressed){
        if (key == 'q') {
            isParallax = !isParallax;
        }
    }
    if(isParallax){
        rotateY(radians(-6));
        rotateY(radians(mouseX/128));
    }
}

void mousePressed() {
    if( mouseX > 925 && mouseX < 1000 && 
        mouseY > 150 && mouseY < 225){
        if(stateMoon == 1){
            conMoon = true;
            stateMoon = 2;
        }else if(stateMoon == 2){
            conMoon = false;
            stateMoon = 1;
        }
    }

    if( mouseX > 150 && mouseX < 200 && 
        mouseY > 450 && mouseY < 500){
        if(stateCat == 1){
            conCatt = true;
            stateCat = 2;
        }else if(stateCat == 2){
            conCatt = false;
            stateCat = 1;
        }
    }

    if( mouseX > 614 && mouseX < 629 && 
        mouseY > 632 && mouseY < 654){
        if(stateMun == 1){
            conMun = true;
            stateMun = 2;
        }else if(stateMun == 2){
            conMun = false;
            stateMun = 1;
        }
    }
}
