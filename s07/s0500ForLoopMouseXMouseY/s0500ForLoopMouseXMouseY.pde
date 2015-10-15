// UDD - Expresión Digital II
// s0501ForLoopMouseXMouseY
// for loop, mouseX mouseY tarea random for loop

float posx, posy, velx, vely, accx, accy, punto;
color m, c, y;
boolean b, l;

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
  
  punto = random(-50, 500);
}

void draw() { 
  background(m);

  posx += velx;
  posy += vely;

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


  for (int i = 0; i <= width; i += 50) {
    for (int j = 0; j <= height; j += 50) {
      stroke(y);
      line(i, j, mouseX, mouseY);
      //TAREA s05t02 "modificar la posición de cada punto, ninguno igual al otro"
    }
  } 

  noStroke();
  fill(c);
  ellipse(posx, posy, 10, 10);
}

