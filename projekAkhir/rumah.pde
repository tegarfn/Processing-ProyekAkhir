class rumah {
    int locX;
    int locY;

    public rumah(int tlocX, int tlocY){
        locX = tlocX;
        locY = tlocY;
    }

    void home(int locX, int locY){
        balcony(locX+400,locY-200);
        building(locX,locY);
        window(locX+50,locY-500);
        window(locX-250,locY-500);
    }

    void building(int locX, int locY){
        noStroke();
        fill(20);
        rect(locX-350,locY,770,-600);//body rumah
        fill(20);
        rect(locX-350,locY+200,770,-600);//body bawah
        fill(10);
        rect(locX+350,locY+170,50,-800);//sisi tiang sebelah kanan
        fill(10);
        rect(locX-350,locY-615,780,15);//fenti atap atas
        fill(20);
        rect(locX-350,locY-650,780,35);//fenti atap bawah
        fill(10);
        rect(locX-350,locY-125,780,15);//fenti tengah
        fill(30);
        rect(locX-350,locY-160,780,35);
        

        // brick effect
        //top
        fill(15);
        rect(locX-60, locY-200, 80, 20);
        rect(locX-250, locY-250, 50, 15);
        rect(locX-260, locY-280, 70, 17);
        rect(locX-240, locY-410, 40, 12);
        rect(locX-140, locY-550, 60, 20);
        rect(locX+60, locY-200, 80, 20);
        rect(locX+250, locY-250, 50, 15);
        rect(locX+260, locY-280, 70, 17);
        rect(locX+240, locY-410, 40, 12);
        rect(locX+140, locY-550, 60, 20);

        // bottom
        rect(locX-100, locY-100, 60, 20);
        rect(locX-120, locY-76, 55, 17);
        rect(locX-270, locY-51, 45, 25);
        rect(locX+100, locY-100, 60, 20);
        rect(locX+120, locY-46, 55, 17);
        rect(locX+270, locY-31, 45, 25);
    }

    void balcony(int locX, int locY){
        fill(0);
        rect(locX, locY-100, 290, 10);
        rect(locX, locY, 300, 15);
        for(int i = 275; i > 0; i -= 50){
            pattern(locX+i, locY);
        }
        line(locX,locY+40,locX+290, locY+10);
    }

    void pattern(int locX, int locY){
        noFill();
        stroke(0);
        strokeWeight(5);
        line(locX, locY, locX, locY-90);
        circle(locX-25,locY-65,50);
        quad(locX-25,locY-40,locX,locY-25,locX-25,locY,locX-50,locY-25);
    }

    void window(int locX, int locY){
        // frame
        fill(60);
        noStroke();
        rect(locX,locY,150,225);
        
        // light
        fill(255, 225, 100);
        rect(locX+12.5,locY+12.5,125,200);

        // reflections
        pushMatrix();
            translate(12.5,0);
            fill(250,250,250,200);
            noStroke();
            // top
            beginShape();
                vertex(locX,locY+50);
                vertex(locX,locY+90);
                vertex(locX+125,locY+170);
                vertex(locX+125,locY+140);
            endShape(CLOSE);
            // bottom
            beginShape();
                vertex(locX,locY+100);
                vertex(locX,locY+110);
                vertex(locX+125,locY+190);
                vertex(locX+125,locY+180);
            endShape(CLOSE);
        popMatrix();

        // grille
        fill(60);
        rect(locX+65,locY,20,225);
        rect(locX,locY+75,150,20);

        // sill
        fill(40);
        rect(locX-15,locY+225,180,20);
        fill(5);
        rect(locX-10,locY+245,170,10);
    }
}
