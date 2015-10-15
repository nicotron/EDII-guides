//UDD - Expresión Digital II
//s05t01
//nueva notación, variable específica, uso de if con argumentos

// Posición y movimiento
float posx, posy, movx, movy;

// Colores 
color bl, ng, c, m, y;

//Colores de elementos
color ellColor, lineColor, rectColor;

void setup() {
  size(500, 500);

  // Colores
  bl = color(255);
  ng = color(0);
  c = color(0, 255, 255); // cyan
  m = color(255, 0, 255); // magenta
  y = color(255, 255, 0); // amarillo

  //Asignación de colores a colores de elementos
  ellColor = ng;
  lineColor = c;
  rectColor = m;
  // Inicialización de posición y movimiento
  posx = 0; 
  posy = height/2;
  movx = 4;
  movx = 5;
}

void draw() {
  background(bl);

  // ellipse de color magenta y borde amarillo de 2
  stroke(lineColor);
  strokeWeight(2);
  fill(ellColor);
  ellipse(posx, posy, 60, 60);

  // velocidad
  posx = posx + movx;
  posy = posy + movy;

  // si posx es mayor al ancho, cambia dirección, fill cyan, stroke magenta de 4
  if (posx > width) {
    movx = -movx;
    lineColor = m;
    ellColor = c;
  }

  // si posx es menor a 0, cambia dirección, fill magenta, stroke a de 1
  if (posx < 0) {
    movx = -movx;
    lineColor = ng;
    ellColor = m;
  }
}

