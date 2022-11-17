class rumah {
    int locX;
    int locY;

    public rumah(int tlocX, int tlocY){
        locX = tlocX;
        locY = tlocY;
    }

    void home(int locX, int locY){
        balony(locX+400,locY-200);
        building(locX,locY);
        window(locX+50,locY-500);
    }

    void building(int locX, int locY){
        noStroke();
        fill(20);
        rect(locX,locY,400,-600);
        fill(10);
        rect(locX+350,locY,50,-600);
        fill(10);
        rect(locX,locY-615,420,15);
        fill(20);
        rect(locX,locY-650,430,35);

    }

    void balony(int locX, int locY){
        fill(0);
        rect(locX, locY-100, 290, 10);
        rect(locX, locY, 300, 15);
        for(int i = 275; i > 0; i -= 50){
            pattern(locX+i, locY);
        }
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
        fill(60);
        noStroke();
        rect(locX,locY,150,225);
        fill(255, 225, 100);
        rect(locX+12.5,locY+12.5,125,200);

        pushMatrix();
        translate(12.5,0);
        fill(250,250,250,200);
        noStroke();
        beginShape();
        vertex(locX,locY+50);
        vertex(locX,locY+90);
        vertex(locX+125,locY+170);
        vertex(locX+125,locY+140);
        endShape(CLOSE);

        beginShape();
        vertex(locX,locY+100);
        vertex(locX,locY+110);
        vertex(locX+125,locY+190);
        vertex(locX+125,locY+180);
        endShape(CLOSE);
        popMatrix();

        fill(60);
        rect(locX+65,locY,20,225);
        rect(locX,locY+75,150,20);

        fill(40);
        rect(locX-15,locY+225,180,20);
        fill(5);
        rect(locX-10,locY+245,170,10);
    }
}