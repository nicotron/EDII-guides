color y = color (255, 255, 0);
color v = color (0, 255, 255);
color c = color (255, 0, 255);

void setup() {
  size(600, 600);
  smooth();
  background(210);
  noLoop();
}

void draw() {
  //  for (int i=0; i<10; i++) {
  //    strokeWeight(4);
  //    stroke(40);
  //    point(random(200, 400), random(200, 400));
  //    rectMode(CENTER);
  //    stroke(210);
  //    fill(210);
  //    ellipse(300, 300, 50, 50);
  //  }
  line(600*(int)random(2), 0, 300, 600);
  line(0, 600*(int)random(2), random(300), 300);
  line(width, height, random(200, 400), 300);
  line(width, 0, random(200, 400), 300);
  //line(300,300, 600, 0);
  //line(300,300, 300, 0);
  for (int i=0; i<3; i++) {
    //ellipse(random(250, 350), random(100, 500), 50, 50);
    rect(random(100, 500), random(100, 500), random(10, 50), random(10, 50));
    // line(0, 300, 250, random(100,500));
    // line(600, 300, 350, random(100,500));
  }
  for(int i = 0; i < 8; i++){
    
    strokeWeight(4);
    point(random(250, 350), random(400, 500));
  }
}