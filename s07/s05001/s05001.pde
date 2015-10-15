// UDD - Expresión Digital II
// s0501 random && || for

/*

DESACTIVAR GITHUB EN S04 Y ACTIVARLO EN S05

*/

float posx, posy, velx, vely, accx, accy;
color m, c, y;

void setup() {
  size(400, 400);
  //inicialización de ariables de posición y dirección
  posx = 0;
  posy = 0;
  velx = 3;
  vely = 1;

  //inicialización de colores
  m = color(255, 0, 255);
  c = color(0, 255, 255);
  y = color(255, 255, 0);
}

void draw() { 
  background(m);
  noStroke();
  fill(c);
  ellipse(posx, posy, 10, 10);
  
  posx += velx;
  posy += vely;
}

/*
random
&& ||
for

*/
