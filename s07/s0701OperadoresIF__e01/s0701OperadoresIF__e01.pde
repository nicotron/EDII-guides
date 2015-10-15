// UDD - Expresión Digital II
// s0701OperadoresIF&&||

float s1, s2, s3;
float eSize, eSizeplus;
color c1, c2, c3, c4;
boolean b;

void setup() {
  size(400, 400);
  //valores de stroke
  s1 = 6;
  s2 = 12;

  //valores de colores
  c1 = color(255, 0, 255);
  c2 = color(255, 255, 0);
  c4 = color(255, 0);

  //asignación de valores a variable específica
  s3 = s1;
  //asignación de valores a variable específica
  c3 = c1;
  eSize = 200;
  eSizeplus = 0;
}

void draw() {
  eSize += eSizeplus;
  println(eSize); 

  background(240);
  //elemento a dibujar
  strokeWeight(s3);
  stroke(c3);
  fill(c4);
  ellipse(mouseX, mouseY, eSize, eSize);

  if (mouseY > height/2) {
    eSize = 100;
  } else if (mouseY < height/2) {
    eSize = 200;
    eSizeplus = 0;
  }
  if (mouseY > height/2 && keyPressed) {
    if ( key == ' ') {
      eSizeplus +=5;
    }
  }
}


//codetime: 
//un programa que disminuya el diametro a la mitad en una mitad del canvas
// pero que aumente de a 5 al apretar space bar en esta mitad

