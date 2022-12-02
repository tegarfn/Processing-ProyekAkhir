class tower{
    int locX;
    int locY;
    int locZ;
    color c;

    public tower(int tlocX, int tlocY, int tlocZ, color tc){
        locX = tlocX;
        locY = tlocY;
        locZ = tlocZ;
        c = tc;
    }

    void empire(int locX, int locY, int locZ, color c){
        fill(c);
        ambientLight(123,82,171);
        translate(0,0,500);
        spotLight(255,255,255,-200,-600,-700,0,0,1,PI/4,1);
        // base
        translate(locX,locY,locZ-500);
        box(250,50,200);

        // tower utama
        translate(locX,locY-300,locZ);
        box(200,550,160);
        
        // tower perut
        translate(locX,locY+12.5,locZ);
        box(170,525,185);

        // tower samping
        translate(locX,locY+12.5,locZ);
        box(235,500,100);

        // tower atap base
        translate(locX,locY-325,locZ);
        box(175,50,150);

        // tower atap utama
        translate(locX,locY-40,locZ);
        box(125,30,100);

        // antenna base
        translate(locX,locY-25,locZ);
        box(35,15,35);

        // antenna utama
        beginShape();
            vertex(locX+5,locY,locZ+5);
            vertex(locX,locY-300,locZ);
            vertex(locX+5,locY,locZ-5);
        endShape();

        beginShape();
            vertex(locX+5,locY,locZ-5);
            vertex(locX,locY-300,locZ);
            vertex(locX-5,locY,locZ-5);
        endShape();

        beginShape();
            vertex(locX-5,locY,locZ-5);
            vertex(locX,locY-300,locZ);
            vertex(locX-5,locY,locZ+5);
        endShape();

        beginShape();
            vertex(locX-5,locY,locZ+5);
            vertex(locX,locY-300,locZ);
            vertex(locX+5,locY,locZ+5);
        endShape();
    }
}
