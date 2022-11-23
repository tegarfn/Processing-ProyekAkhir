
void setup() {
    size(1280,720,P3D);
    smooth(4);
}

void draw() {
    background(0);
    fill(255);
    randomSeed(20);
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    star(random(0, width), random(0, 150), random(0.15, 0.4));
    push();
    fill(#74726D);
    translate(width / 2, height - 200, -50);
    box(width, 100, 20);
    push();
    fill(#f1edeb);
    translate(( - width / 2)+(width/5), -125, 0);
    box(width/3-30, 150,15);
    translate(width/3-30, -25);
    box(width/3-30, 200,15);
    translate(width/3-30, 10);
    box(width/3-30, 180,15);
    pop();

    translate(0, -100, -20);
    box(width, 100, 20);
    translate(( - width / 2), -150, 0);
    for (int i = 1; i < 8; ++i) {
        pushMatrix();
        int rand = int(random(150, 300));
        translate((width/8)*i, (200-rand)/2, 0);
        fill(#BD7E58);
        box(width/12 , rand, 20);
        push();
        fill(255);
        translate(0, rand/3, 10);
        rectMode(CENTER);
        for(int x = 0; x < rand/45; x++){
            rect(20, 0, 20, 30);
            rect(-20, 0, 20, 30);
            translate(0, -40, 0);
        }
        pop();
        popMatrix();
    }
    pop();

    push();
    fill(#F9D71C);
    translate(1150, 0, -150);
    noStroke();
    sphere(100);
    pop();

    push();
    fill(255);
        translate(710, 245, -50);
        box(50, 50, 15);
        fill(255, 50, 50);
        translate(0, -40);
        box(50, 30, 15);
        fill(255);
        translate(0, -40);
        box(50, 50, 15);
    pop();


    fill(255);
    text("mouse at : (" + mouseX + "," + mouseY + ")", mouseX + 30, mouseY);
    fill(get(mouseX, mouseY));
    strokeWeight(1);
    stroke(0);
    rect(mouseX + 30, mouseY - 30, 20, 20);
}

void star(float x, float y, float scale) {
    push();
    float z = random(-75, -100);
    fill(#ffe5cf);
    translate(x, y);
    scale(scale, scale);
    beginShape();
    vertex(0, 40, z);
    vertex(20, 40, z);
    vertex(30, 20, z);
    vertex(40, 40, z);
    vertex(60, 40, z);
    vertex(45, 55, z);
    vertex(55, 80, z);
    vertex(30, 70, z);
    vertex(5, 80, z);
    vertex(15, 55, z);
    endShape();
    pop();
}