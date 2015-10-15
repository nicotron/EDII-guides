void fn(int x, int y, float tm, int c) {
  color cfill = color(255, 255, 255);
  if (c == 0) {
    cfill = color(255, 0, 255);
  }
  if (c == 1) {
    cfill = color(0, 255, 255);
  }
  if (c == 2) {
    cfill = color(255, 255, 0);
  }

  // circulos
  strokeWeight(2);
  stroke(cfill);
  noFill();
  ellipse(x, y, tm, tm);
  
  // lineas
  if (c == 0) {
    strokeWeight(3);
    line(x, y, x + tm*.5, y - tm*.5);
    line(x, y, x - tm*.5, y + tm*.5);
    fill(255);
    ellipse(x, y, 10, 10);
  }
  if (c == 1) {
    line(x, y, x - tm, y - tm);
    line(x, y, x - tm, y + tm);
    fill(255, 40, 145);
    ellipse(x - tm, y - tm, 10, 10);
    ellipse(x - tm, y + tm, 15, 15);
  }
  if (c == 2) {
    line(x, y, x - tm, y);
    line(x, y, width/2, height/2);
    fill(255, 140, 14);
    
    ellipse(x - tm, y, 20, 20);
    strokeWeight(10);
    ellipse(width/2, height/2, 45, 45);
  }
}

