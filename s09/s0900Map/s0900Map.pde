void setup() {
  size(500, 500);
  
}

void draw() {
  background(204);
  
  line(250, 0, 250, 500);
  line(200, 0, 200, 500);
  line(300, 0, 300, 500);
  float  x1 = map(mouseX, 0, width, 200, 300);
  fill(255, 0, 255);
  ellipse(x1, 200, 50, 50);  
  float x2 = map(mouseX, 0, width, 0, 250);
  fill(255, 255, 0);
  ellipse(x2, 300, 50, 50);  
}
