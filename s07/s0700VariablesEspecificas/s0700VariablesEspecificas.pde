// UDD - Expresión Digital II
// s0701VariablesEspecificas
// keyPressed funcion
boolean b;

float s1, s2, s3;
color c1, c2, c3;

void setup() {
  size(400, 400);
  b = true;

  //valores de stroke
  s1 = 6;
  s2 = 12;

  //valores de colores
  c1 = color(255, 0, 255);
  c2 = color(255, 255, 0);

  //asignación de valores a variable específica
  s3 = s1;
  //asignación de valores a variable específica
  c3 = c1;
}

void draw() {
  background(240);
  
  //elemento a dibujar
  strokeWeight(s3);
  stroke(c3);
  noFill();
  ellipse(width/2, height/2, 150, 150);
  
  strokeWeight(1);
  stroke(0);
  line(0, 0, width, height);
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      s3 = s2;
      c3 = c2; // color (255, 40, 190);
      //stroke(c2);
    }
    if (keyCode == RIGHT) {
      s3 = s1;
      c3 = c1;
      //stroke(c1);
    }
  }
}

