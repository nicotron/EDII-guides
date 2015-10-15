void fn(int x, int y, int tm, color c){
  

  fill(c);
//  fill(c);
  noStroke();
  ellipse(x, y, tm*2, tm*2);
  
  stroke(c, 255-c, 255-c);
  strokeWeight(1);
  line(x - (tm + 5), y - tm, x + (tm + 5), y - tm);
  line(x - (tm + 5), y + tm, x + (tm + 5), y + tm);
  
}
