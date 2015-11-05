void funcion(float x, float y, String vientoDirT, float vientoDir){
  float viento = (vientoDir - 90) * (TWO_PI/360);
  float rotacion = viento;
  pushMatrix();
  translate(x,y);
  
  stroke(255);
//  blendMode(SOFT_LIGHT);
  fill(255 - x*y*0.001, 120, x*y*0.001);
  ellipse(0, 0, 5, 5);
//  rotate(rotacion);
//    noFill();
//    stroke(123);
//    line(0, 0, 20, 0);
//    ellipse(0, 0, 5, 5);
//    
//    textMode(MODEL);
//    fill(0);
//    textAlign(CENTER);
//    text(vientoDirT, 20, 0);
  popMatrix();
}
