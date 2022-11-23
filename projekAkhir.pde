int speed = 5000;
kereta krt = new kereta(0,0);
rumah rmh = new rumah(0,0);

void setup() {
    size(1920,1080);
}

void draw() {
    background(200);
    fill(50, 100, 150);
    rect(0,930,1920,150);
    translate(width/2,height/2);

    pushMatrix();
        fill(0);
        strokeWeight(1);
        translate(0,200);
        scale(0.5);
        noFill();
        noStroke();

        krt.kepala(speed,-100);

        for(int i = 500; i <= 2500; i += 500){
            krt.gerbong(speed+i,-100);
        }

        if(speed < -10000){
            speed = 5000;
        }else{
            speed -= 100;   
        }
        
        for(int i = -4000; i <= 3500; i += 500){
            krt.railway(i,0);
        }
    popMatrix();
    
    pushMatrix();
        scale(1);
        rmh.home(-960,540); 
    popMatrix();

    moon();
}

void moon(){
    circle(600,-450, 100);
}