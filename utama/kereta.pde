public class kereta {
    int locX;
    int locY;
    int locZ;

    public kereta(int tlocX, int tlocY, int tlocZ){
        locX = tlocX;
        locY = tlocY;
        locZ = tlocZ;
    }
    
    void cart(int locX, int locY){
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

    void head(int locX, int locY){
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

    void railway(int locX, int locY){
        noStroke();
        
        translate(0,0,2);
        // penyangga
        strokeWeight(10);
        stroke(100);
        line(locX+100,locY+25,locX+100,locY+160);
        line(locX+200,locY+25,locX+200,locY+120);
        line(locX+300,locY+25,locX+300,locY+160);

        // penyangga bawah
        noFill();
        beginShape();
            vertex(locX,locY+250);
            vertex(locX+100,locY+160);
            vertex(locX+200,locY+120);
            vertex(locX+300,locY+160);
            vertex(locX+400,locY+250);
        endShape();

        noStroke();
        // pillar utama
        translate(0,0,2);
        fill(100);
        rect(locX+400,locY+25,100,500);

        translate(0,0,2);
        // pillar hiasan 1
        fill(85);
        rect(locX+425,locY+25,50,300);
        // pillar hiasan 2
        fill(80);
        rect(locX+390,locY+275,120,60);
        translate(0,0,2);
        // pillar penyangga
        fill(120);
        quad(locX+300,locY+25,locX+400,locY+75,locX+500,locY+75,locX+600,locY+25);

        translate(0,0,2);
        // rel
        fill(120);
        rect(locX,locY,500,15);
        // rel 2
        fill(70);
        rect(locX,locY+15,500,10);

        translate(0,0,-10);
        // pagar
        stroke(80);
        for(int i = 0; i < 500; i += 50){
            line(locX+i,locY-25,locX+i+50,locY);
            line(locX+i,locY,locX+i+50,locY-25);
        }
        // penyangga hiasan
        noStroke();
        fill(120);
        rect(locX,locY-35,510,10);
    }
}
