// UDD - Expresión Digital II
// s0501ForLoop

float posx, posy, velx, vely, accx, accy;
color c1, c2, c3;

void setup() {
  size(800, 800);
  //inicialización de ariables de posición y dirección
  posx = random(100);
  posy = height;
  velx = 3;
  vely = 1;

  //inicialización de colores
  c1 = color(255, 0, 255);
  c2 = color(0, 255, 255);
  c3 = color(255, 255, 0);
}

void draw() {
  background(c2);
  for (int i = 0; i <= width; i += 10) {
    for (int j = 0; j <= height; j += 10) {
      noStroke();
      fill(c1);
      //fill(c1,i*j/300); 
      //fill(c1 * (i*j));
      ellipse(i, j, 5, 5);
    }
  }
}


// tarea s05t01 "cambiar el color de cada uno de los elementos dentro de los 4 colores"

