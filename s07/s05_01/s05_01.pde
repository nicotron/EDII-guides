// UDD - Expresión Digital II
// s0501 keyPressed keyReleased mousePressed booleans

float posx, posy, velx, vely, accx, accy;
float a = 0; // es inicializada de forma global para que su función tenga acceso
color m, c, y;
boolean b, l; //

void setup() {
  size(400, 400);
  //inicialización de ariables de posición y dirección
  posx = random(100);
  posy = height;
  velx = 3;
  vely = 1;

  //inicialización de colores
  m = color(255, 0, 255);
  c = color(0, 255, 255);
  y = color(255, 255, 0);

  //inicialización de boolean
  b = true;
  l = true;
}

void draw() { 
  background(m);
  noStroke();
  fill(c);
  ellipse(posx, posy, 10, 10);
  
  posx += velx;
  posy += vely;

  //el elemento cambia de dirección al llegar a alguno de los extremos
  //extremo derecho
  if (posx > width) {
    velx *= -1;
    accx *= -1;
  }
  //extremo izquierdo
  else if (posx < 0 ) {
    velx *= -1;
    accx *= -1;
  }
  //extremo inferior
  else if (posy > height) {
    vely *= -1;
    accy *= -1;
  }
  //extremo superior
  else if (posy < 0 ) {
    vely *= -1;
    accy *= -1;
  }

  //boolean b l
  else if (b == false) {
    ellipse(posx, posy, 20, 20);
  }
  else if (l == false) {
    fill(y);
    ellipse(width/2, height, width, height);
  }
}

// TAREA s05t03 hacer cambios con la funcion mousePressed

void keyPressed() {
  if (key == 'b') {
    b = false;
  }
  if (key == 'l') {
    l = false;
  }
}

void keyReleased() {
  l = true;
}

