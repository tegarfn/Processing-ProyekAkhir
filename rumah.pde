class rumah {
    int locX;
    int locY;
    int locZ;

    public rumah(int tlocX, int tlocY, int tlocZ){
        locX = tlocX;
        locY = tlocY;
        locZ = tlocZ;
    }

    void home(int locX, int locY){
        balcony(locX+400,locY-200,locZ);
        building(locX,locY,locZ);
        window(locX+50,locY-500,locZ);
        window(locX-250,locY-500,locZ);
    }

    void building(int locX, int locY, int locZ){
        noStroke();
        //body rumah
        translate(0,0,locZ);
        fill(20);
        rect(locX-350,locY,770,-600);
        //body bawah
        translate(0,0,locZ);
        fill(20);
        rect(locX-350,locY+200,770,-600);
        //sisi tiang sebelah kanan
        fill(10);
        translate(0,0,locZ);
        rect(locX+350,locY+170,50,-800);
        //fenti atap atas
        translate(0,0,locZ);
        fill(10);
        rect(locX-350,locY-615,780,25);
        //fenti atap bawah
        translate(0,0,locZ);
        fill(20);
        rect(locX-350,locY-650,790,45);
        //fenti tengah
        translate(0,0,locZ);
        fill(10);
        rect(locX-350,locY-125,790,25);
        translate(0,0,locZ);
        fill(30);
        rect(locX-350,locY-160,800,35);

        // brick effect
        //top
        translate(0,0,locZ);
        fill(15);
        rect(locX+60, locY-200, 80, 20);
        rect(locX+250, locY-250, 50, 15);
        rect(locX+260, locY-280, 70, 17);
        rect(locX+240, locY-410, 40, 12);
        rect(locX+140, locY-550, 60, 20);

        // bottom
        rect(locX+100, locY-100, 60, 20);
        rect(locX+120, locY-76, 55, 17);
        rect(locX+270, locY-51, 45, 25);
    }

    void balcony(int locX, int locY, int locZ){
        fill(0);
        translate(0,0,locZ);
        rect(locX, locY-100, 290, 10);
        rect(locX, locY, 300, 15);
        for(int i = 275; i > 0; i -= 50){
            pattern(locX+i, locY,locZ);
        }
        line(locX,locY+40,locX+290, locY+10);
    }

    void pattern(int locX, int locY, int locZ){
        translate(0,0,locZ);
        noFill();
        stroke(0);
        strokeWeight(5);
        line(locX, locY, locX, locY-90);
        circle(locX-25,locY-65,50);
        quad(locX-25,locY-40,locX,locY-25,locX-25,locY,locX-50,locY-25);
    }

    void window(int locX, int locY, int locZ){
        // frame
        translate(0,0,locZ);
        fill(60);
        noStroke();
        rect(locX,locY,150,225);
        
        // light
        translate(0,0,locZ);
        fill(255, 225, 100);
        rect(locX+12.5,locY+12.5,125,200);

        // reflections
        translate(0,0,locZ);
        pushMatrix();
            translate(12.5,0,0);
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
        translate(0,0,locZ);
        fill(60);
        rect(locX+65,locY,20,225);
        rect(locX,locY+75,150,20);

        // sill
        translate(0,0,locZ);
        fill(40);
        rect(locX-15,locY+225,180,20);
        fill(5);
        rect(locX-10,locY+245,170,10);
    }

    void person(int locX, int locY, int locZ){
        translate(0,0,locZ);
        fill(0);
        strokeWeight(0);

        // head
        ellipse(locX,locY,40,45);

        // hair
        circle(locX-15,locY-15,15);

        beginShape();
            vertex(locX-15,locY-15);
            bezierVertex(locX-50,locY-50,locX,locY+70,locX-55,locY+55);
            bezierVertex(locX-20,locY+60,locX-60,locY-60,locX-15,locY-15);
        endShape();

        // left hand
        beginShape();
            vertex(locX-10,locY+45);
            bezierVertex(locX-5,locY+15,locX+30,locY+65,locX+60,locY+45);
            bezierVertex(locX+60,locY+65,locX-10,locY+65,locX-10,locY+45);
        endShape();

        // gelas
        strokeWeight(10);
        stroke(0);
        rect(locX+65,locY+30,20,30,5);
        noFill();
        beginShape();
            vertex(locX+65,locY+40);
            vertex(locX+55,locY+40);
            vertex(locX+55,locY+55);
            vertex(locX+65,locY+55);
        endShape();

        // body
        strokeWeight(0);
        fill(0);
        ellipse(locX-5,locY+65,45,100);

        // foot
        beginShape();
            vertex(locX-5,locY+105);
            bezierVertex(locX+35,locY+125,locX+25,locY+155,locX,locY+225);
            bezierVertex(locX+5,locY+155,locX-35,locY+115,locX-5,locY+105);
        endShape();

        beginShape();
            vertex(locX-5,locY+105);
            bezierVertex(locX+25,locY+105,locX+25,locY+155,locX-25,locY+225);
            bezierVertex(locX+5,locY+155,locX-35,locY+115,locX-5,locY+105);
        endShape();

        // skirt
        beginShape();
            vertex(locX-45,locY+145);
            vertex(locX-28,locY+80);
            vertex(locX+17,locY+80);
            vertex(locX+30,locY+145);
            bezierVertex(locX,locY+130,locX-10,locY+150,locX-45,locY+145);
        endShape();
    }

    void kucing(int locX, int locY, int locZ){
        translate(0,0,locZ);
        noStroke();

        translate(0,0,1);
        //tail
        fill(255);
        ellipse(locX+130,locY+250,150,20);

        translate(0,0,1);
        //Ear
        fill(255);
        triangle(locX-90,locY-40,locX-80,locY-120,locX-20,locY-80);
        triangle(locX+90,locY-40,locX+80,locY-120,locX+20,locY-80);
        
        translate(0,0,1);
        //head & body
        fill(255);
        ellipse(locX,locY,200,180);
        ellipse(locX,locY+165,180,250);

        translate(0,0,1);
        //eye blue    
        fill(0,115,148);
        ellipse(locX+45,locY,50,50);
        ellipse(locX-45,locY,50,50);

        translate(0,0,1);
        //eye white
        fill(255);
        ellipse(locX+40,locY-5,20,20);
        ellipse(locX-50,locY-5,20,20);

        translate(0,0,1);
        //Nose
        fill(249,193,207);
        triangle(locX-20,locY+20,locX,locY+35,locX+20,locY+20);

        translate(0,0,1);
        //leg
        fill(255);
        circle(locX-40, locY+280, 50);
        circle(locX+40, locY+280, 50);  
    }
}