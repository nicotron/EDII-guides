void fn(int x, int y, float tm, int c){
  

  fill(c, c * 0.5, 255 - c);
//  fill(c);
  noStroke();
  ellipse(x, y, tm, tm);
  
  stroke(c, 255-c, 255-c);
  strokeWeight(1);
  line(x - (tm + 5), y - tm, x + (tm + 5), y - tm);
  line(x - (tm + 5), y + tm, x + (tm + 5), y + tm);
  
}
