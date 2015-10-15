/* 
 UDD - EXPRESION DIGITAL II
 S03
 Muestra del objetivo a alcanzar en esta clase
 scope
 int float
 void setup
 void draw
 ++ —- += -=
 for loop
 if
 println
 comments
 
 Este scketch mostrará como con if en una ellipse que se mueve de 0 a width
 cambia colores y posiciones de los otros objetos que se están moviendo
 */

float x1, x2, x3, y1, y2, y3;  //posicion
color c1, c2, c3; //colores de base

void setup() {
  size(800, 600);
  smooth();

  c1 = color(255, 0, 255); //magenta
  c2 = color(255, 255, 0); //amarillo 
  c3 = color(0, 255, 255); //cyan

  x1 = 0;
  y1 = 0;
  x2 = random(10, 500);
  y2 = random(10, 500);
  x3 = random(width);
  y3 = random(-10, 10);
}

void draw() {
  background(0);
  noStroke();

  //si x1 llega al valor de width, vuelve x1, y1 a 0 y crea nuevas posiciones para x2,y2
  if (x1 >= width) { 
    x1 = 0;
    y1 = random(height);
    y2 = random(10, 500);
    x2 = random(10, 500);
    x3 = random(width);
  }
  //rectangulo alto máximo con ancho entre 10, 500 y alpha y2
  fill(c2, y2);
  rect(x2, 0, y2, height);

  //rectangulo ancho máximo con ancho entre 10, 500 y alpha x1
  fill(c3, x1);
  rect(0, x2, width, y2);

  //triangulo con funcion map para que el 0,0 avance hasta el 800, 600
  //y que cambie de color de fonde cuando pase la mitad
  if (x1 > width/2) {
    fill(c3);
    triangle(x1, y1, 0, height, width, 0);
    x1 = map(y1, 0, height, 0, width); //y es de 0 a 600, sus valores se escalan de 0 a 800 que es x
  } else {
    fill(c1);
    triangle(x1, y1, 0, height, width, 0);
    x1 = map(y1, 0, height, 0, width); //y es de 0 a 600, sus valores se escalan de 0 a 800 que es x
  }

  //ellipses que parten en random x y height/2 + random(-10, 10) y ascienden o descienden dependiendo del height/2
  if (x1 < width/2) {
    noFill();
    stroke(c2);
    strokeWeight(40);
    ellipse(x3, height/2 + y3, 200, 200);
    x3 -= 0.5;
    y3 += 0.5;
  }
  if (x1 > width/2) {
    noFill();
    stroke(c1);
    strokeWeight(40);
    ellipse(x3, height/2 + y3, 200, 200);
    x3 += 0.5;
    y3 -= 0.5;
  }

  //ellipse de izq a der cuando llega al final aparece en x = 0;
  noStroke();
  fill(c2);
  ellipse(x1, height/2, 25, 25);

  for (float i = width * 0.4; i <= width * 0.6; i+= 15) {
    for (float j = height * 0.4; j <= height * 0.6; j+= 15) {
      fill(c3);
      ellipse(i + random(-2, 2), j + random(-2, 2), 5, 5);
    }
  }

  //avanza 1 x,y en cada ciclo del loop
  x1++;
  y1++;
}


