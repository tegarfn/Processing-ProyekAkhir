void setup(){
  size(700,700);
}
void draw(){
   noStroke();
  //head & body
  fill(255);
  ellipse(width/2,height/2,200,180);
  ellipse(width/2,height/2+165,180,250);
  //eye blue    
  fill(0,115,148);
  ellipse(width/2+45,height/2,50,50);
  ellipse(width/2-45,height/2,50,50);
  //eye white
  fill(255);
  ellipse(width/2+40,height/2-5,20,20);
  ellipse(width/2-50,height/2-5,20,20);
 //Nose
  fill(249,193,207);
  triangle(width/2-20,height/2+20,width/2,height/2+35,width/2+20,height/2+20);
  //Ear
  fill(255);
  triangle(width/2-90,height/2-40,width/2-80,height/2-120,width/2-20,height/2-80);
  triangle(width/2+90,height/2-40,width/2+80,height/2-120,width/2+20,height/2-80);
  //tail
  fill(255);
  ellipse(width/2+130,height/2+250,150,20);
  //leg
  fill(255);
  circle(380, 620, 50);
  circle(320, 620, 50);
  
  
        
        
}
