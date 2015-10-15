// UDD - Expresión Digital II
// s0701OperadoresIF&&||

float s1, s2, s3;
color c1, c2, c3, c4;
boolean b;

void setup() {
  size(400, 400);
  b = false;
  //valores de stroke
  s1 = 6;
  s2 = 12;

  //valores de colores
  c1 = color(255, 0, 255);
  c2 = color(255, 255, 0);
  c4 = color(255,0);

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
  fill(c4);
  ellipse(mouseX, mouseY, 150, 150);

  if (mouseX > width/2) {
    c3 = color(0, 150, 255);
  } else {
    c3 = c1;
  }

  if((mouseX > width/2) || (b == true)){
    c4 = color(255, 0, 200);
  } else {
    c3 = c1;
    c4 = color(255, 0, 0);
    
  }
}

void keyPressed() {
  if (key == ' ') {
    b =! b;
  }
}

//codetime: 
//un programa que disminuya el diametro a la mitad en una mitad del canvas
// pero que aumente de a 5 al apretar space bar en esta mitad
