class kota{
    int locX;
    int locY;

    public kota(int tlocX, int tlocY){
        locX = tlocX;
        locY = tlocY;
    }

    void town3(int locX, int locY){
        fill(#553285);
        noStroke();
        beginShape();
            // tower 1
            vertex(locX,locY);
            vertex(locX,locY-400);
            vertex(locX+110,locY-400);
            vertex(locX+110,locY-390);
            vertex(locX+100,locY-390);
            vertex(locX+100,locY-200);

            // tower 2
            vertex(locX+150,locY-200);
            vertex(locX+150,locY-290);
            vertex(locX+140,locY-290);
            vertex(locX+140,locY-300);

            // tower 3
            vertex(locX+250,locY-300);
            vertex(locX+250,locY-350);
            vertex(locX+280,locY-350);
            vertex(locX+280,locY-365);
            vertex(locX+270,locY-365);
            vertex(locX+270,locY-375);
            vertex(locX+430,locY-375);
            vertex(locX+430,locY-365);
            vertex(locX+420,locY-365);
            vertex(locX+420,locY-350);
            vertex(locX+450,locY-350);
            vertex(locX+450,locY-200);

            // tower 3 - twin tower
            vertex(locX+500,locY-200);
            vertex(locX+500,locY-650);
            vertex(locX+490,locY-650);
            vertex(locX+490,locY-660);
            vertex(locX+500,locY-660);
            vertex(locX+500,locY-670);
            vertex(locX+480,locY-670);
            vertex(locX+480,locY-700);
            vertex(locX+500,locY-700);
            vertex(locX+670,locY-700);
            vertex(locX+670,locY-670);
            vertex(locX+650,locY-670);
            vertex(locX+650,locY-660);
            vertex(locX+660,locY-660);
            vertex(locX+660,locY-650);
            vertex(locX+650,locY-650);
            
            vertex(locX+650,locY-650);
            vertex(locX+650,locY-550);
            
            vertex(locX+700,locY-550);
            vertex(locX+700,locY-650);
            vertex(locX+690,locY-650);
            vertex(locX+690,locY-660);
            vertex(locX+700,locY-660);
            vertex(locX+700,locY-670);
            vertex(locX+680,locY-670);
            vertex(locX+680,locY-700);
            vertex(locX+870,locY-700);
            vertex(locX+870,locY-670);
            vertex(locX+850,locY-670);
            vertex(locX+850,locY-660);
            vertex(locX+860,locY-660);
            vertex(locX+860,locY-650);
            vertex(locX+850,locY-650);

            // tower 4
            vertex(locX+850,locY-400);
            vertex(locX+1060,locY-400);
            vertex(locX+1060,locY-390);
            vertex(locX+1050,locY-390);
            vertex(locX+1050,locY-300);

            // tower 5
            vertex(locX+1100,locY-300);
            vertex(locX+1100,locY-500);
            vertex(locX+1300,locY-560);
            vertex(locX+1300,locY-440);
            vertex(locX+1400,locY-400);
            vertex(locX+1400,locY-250);

            // tower 6
            vertex(locX+1600,locY-250);
            vertex(locX+1600,locY-340);
            vertex(locX+1590,locY-340);
            vertex(locX+1590,locY-350);
            vertex(locX+1800,locY-350);

            // tower 7
            vertex(locX+1800,locY-390);
            vertex(locX+1790,locY-390);
            vertex(locX+1790,locY-400);
            vertex(locX+1920,locY-400);
            vertex(locX+1920,locY);
        endShape(CLOSE);   
    }

    void town2(int locX, int locY){
        fill(#7B52AB);
        noStroke();
        beginShape();
            vertex(locX, locY);
            // towers 1
            vertex(locX, locY-420);
            vertex(locX+100, locY-420);
            vertex(locX+100, locY-450);
            vertex(locX+150, locY-450);
            vertex(locX+150, locY-400);
            vertex(locX+250, locY-400);
            vertex(locX+250, locY-350);
            vertex(locX+300, locY-350);
            vertex(locX+300, locY-400);
            vertex(locX+300, locY-450);
            vertex(locX+400, locY-450);
            vertex(locX+400, locY-500);
            vertex(locX+450, locY-500);
            vertex(locX+450, locY-400);
            vertex(locX+500, locY-400);
            vertex(locX+500, locY-300);

            // towers 2
            vertex(locX+800, locY-200);
            vertex(locX+800, locY-510);
            vertex(locX+900, locY-510);
            vertex(locX+900, locY-560);
            vertex(locX+1000, locY-560);
            vertex(locX+1000, locY-475);
            vertex(locX+1100, locY-475);
            vertex(locX+1100, locY-200);

            // tower 3
            vertex(locX+1380, locY-100);
            // vertex(locX+1380, locY-440);
            // vertex(locX+1400, locY-440);
            // vertex(locX+1400, locY-610);
            // vertex(locX+1450, locY-610);
            // vertex(locX+1450, locY-630);
            // vertex(locX+1480, locY-630);
            // vertex(locX+1480, locY-650);
            // vertex(locX+1495, locY-650);
            // vertex(locX+1500, locY-850);
            // vertex(locX+1505, locY-650);
            // vertex(locX+1520, locY-650);
            // vertex(locX+1520, locY-630);
            // vertex(locX+1550, locY-630);
            // vertex(locX+1550, locY-610);
            // vertex(locX+1600, locY-610);
            // vertex(locX+1600, locY-440);
            // vertex(locX+1620, locY-440);
            // vertex(locX+1620, locY-100);
            // vertex(locX+1920, locY);
        endShape(CLOSE); 
    }

    void town1(int locX, int locY){
        fill(#9768D1);
        beginShape();
            vertex(locX, locY);
            vertex(locX, locY-500);
            vertex(locX+50, locY-500);
            vertex(locX+50, locY-550);

            vertex(locX+100, locY-550);
            vertex(locX+100, locY-600);
            vertex(locX+150, locY-600);
            vertex(locX+150, locY-650);
            
            vertex(locX+200, locY-650);
            vertex(locX+200, locY-600);
            vertex(locX+250, locY-600);
            vertex(locX+250, locY-650);
                        
            vertex(locX+300, locY-650);
            vertex(locX+300, locY-700);
            vertex(locX+350, locY-750);
            
            vertex(locX+400, locY-750);
            vertex(locX+450, locY-600);
            vertex(locX+450, locY-550);
            
            vertex(locX+500, locY-550);
            vertex(locX+500, locY-500);
            vertex(locX+550, locY-500);
            vertex(locX+550, locY-600);
            
            vertex(locX+600, locY-600);
            vertex(locX+600, locY-650);
            vertex(locX+650, locY-650);
            vertex(locX+650, locY-600);
            
            vertex(locX+750, locY-600);
            vertex(locX+750, locY-550);
            
            vertex(locX+800, locY-500);
            vertex(locX+850, locY-500);
            vertex(locX+850, locY-450);
            
            vertex(locX+900, locY-450);
            vertex(locX+900, locY-400);
            vertex(locX+950, locY-400);
            vertex(locX+950, locY-500);
            
            vertex(locX+1000, locY-500);
            vertex(locX+1000, locY-550);
            vertex(locX+1050, locY-550);

            vertex(locX+1150, locY-550);
            vertex(locX+1150, locY-600);
            
            vertex(locX+1200, locY-600);
            vertex(locX+1200, locY-500);
            vertex(locX+1250, locY-500);
            vertex(locX+1250, locY-550);
            
            vertex(locX+1300, locY-550);
            vertex(locX+1300, locY-500);
            vertex(locX+1350, locY-500);
            vertex(locX+1350, locY-450);
            
            vertex(locX+1400, locY-450);
            vertex(locX+1400, locY-300);
            vertex(locX+1450, locY-300);
            vertex(locX+1450, locY-400);
            
            vertex(locX+1500, locY-400);
            vertex(locX+1500, locY-450);
            vertex(locX+1550, locY-450);

            vertex(locX+1600, locY-500);
            vertex(locX+1650, locY-500);
            vertex(locX+1650, locY-550);
            
            vertex(locX+1800, locY-550);
            vertex(locX+1800, locY-500);
            vertex(locX+1850, locY-500);
            vertex(locX+1850, locY-550);

            vertex(locX+1900, locY-550);
            vertex(locX+1900, locY-600);
            vertex(locX+1950, locY-600);
            vertex(locX+1950, locY-650);

            vertex(locX+1950, locY-0);
        endShape(CLOSE);
    }

    void rsRoad(int locX, int locY){
        // wall
        noStroke();
        fill(50);
        rect(locX,locY,500,-100);
        // pillar 1
        fill(30);
        rect(locX-25,locY,50,-100);

        // wall pattern
        fill(30);
        quad(locX+250, locY-20, locX+150, locY-50, locX+250, locY-80, locX+350, locY-50);
        fill(40);
        quad(locX+250, locY-30, locX+180, locY-50, locX+250, locY-70, locX+320, locY-50);

        // base road
        noStroke();
        fill(80);
        rect(locX,locY-110,500,-15);
        fill(30);
        rect(locX,locY-100,500,-10);
        // pillar 2
        fill(80);
        rect(locX-10,locY,20,-110);

        // street light
        stroke(80);
        strokeWeight(10);
        noFill();
        line(locX,locY-100,locX,locY-400);
        beginShape();
            vertex(locX-150,locY-400);
            bezierVertex(locX-150,locY-450,locX,locY-450,locX,locY-400);
            bezierVertex(locX,locY-450,locX+150,locY-450,locX+150,locY-400);
        endShape();

        // lamp
        noStroke();
        fill(225,200,150);
        circle(locX-150,locY-390,20);
        circle(locX+150,locY-390,20);

        // fench pattern
        stroke(40);
        strokeWeight(8);
        for(int i = 0; i < 500; i += 50){
            line(locX+i,locY-140,locX+i+50,locY-120);
            line(locX+i,locY-120,locX+i+50,locY-140);
        }

        // top fench
        noStroke();
        fill(90);
        rect(locX,locY-150,500,10);
    }
}