// UDD - Expresión Digital II
// s0702FuncionesPropias
// keyPressed funcion

/*
tomar este codigo y hacer que el objeto siga el mouse
y al apretar space var lo deje ahí dibujado
*/

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
  l = false;
}

void draw() { 
  background(m);

  posx += velx;
  posy += vely;

  circulo(posx, posy);

  //el elemento cambia de dirección al llegar a alguno de los extremos
  //extremo derecho
  if (posx > width) {
    velx *= -1;
    accx *= -1;
  }
  //extremo izquierdo
  if (posx < 0 ) {
    velx *= -1;
    accx *= -1;
  }
  //extremo inferior
  if (posy > height) {
    vely *= -1;
    accy *= -1;
  }
  //extremo superior
  if (posy < 0 ) {
    vely *= -1;
    accy *= -1;
  }
}

//función que crea un círculo con 4 círculos en sus extremos que se alejan y acercan
void circulo(float posx, float posy) {
  if (b == true) {
    strokeWeight(4);
    stroke(y);
    point(posx - a, posy - a);
    point(posx - a, posy + a);
    point(posx + a, posy - a);
    point(posx + a, posy + a);
  } else if (b == false) {
    strokeWeight(2);
    stroke(y);
    noFill();
    ellipse(posx, posy, a * 2, a * 2);
  } 
  if (l == true) {
    float ls = random(10);
    strokeWeight(ls);
    // tarea hacer un random entre los 4 colore
    stroke(c);
    line(0, 0, posx, posy);
  }
  noStroke();
  fill(c);
  ellipse(posx, posy, 10, 10);
  //si se alejan demasiado, que se acerquen
  if (a > 20) {
    a *= -1;
  } else {
    a += 0.5;
  }
}
void keyPressed() {
  if (key == ' ') {
    b = !b;
  }
  if (key == 'l') {
    l = true;
  }
}

void keyReleased() {
  l = false;
}

