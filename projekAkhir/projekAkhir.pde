int speed = 5000;
sunrise pagi = new sunrise(0,0);
subuh jam3 = new subuh(0,0);
kereta krt = new kereta(0,0);
rumah rmh = new rumah(0,0);
air alir = new air(0,0);
pinggir sungai = new pinggir(0,0);

void setup() {
    size(1280,720);
}

void draw() {
    background(200);
    fill(50, 100, 150);
    rect(0,930,1920,150);
    translate(width/2,height/2);
    
    //pushMatrix();
    //    if (mousePressed == true){
    //        pagi.pagihari(-640,-360);
    //    } else{
    //        jam3.subuhan(-640,-360);
    //    }
    //    moon();
    //popMatrix();

    pushMatrix();
      alir.mengalir(0,0);
      sungai.tanah(0,0);
    popMatrix();
    
    pushMatrix();
        fill(0);
        strokeWeight(1);
        translate(0,200);
        scale(0.25);
        noFill();
        noStroke();

        krt.kepala(speed,-300);

        for(int i = 500; i <= 2500; i += 500){
            krt.gerbong(speed+i,-300);
        }

        if(speed < -10000){
            speed = 5000;
        }else{
            speed -= 100;   
        }
        
        for(int i = -4000; i <= 3500; i += 500){
            krt.railway(i,-200);
        }
    popMatrix();
    
    pushMatrix();
        scale(0.5);
        rmh.home(-960,640); 
    popMatrix();

}

void moon(){
    noStroke();
    fill(255);
    circle(500,-250, 100);
}
