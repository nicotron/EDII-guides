// UDD - Expresión Digital II
// ++ -- += -= *= /=

// Variables declara, inicializa, usa
int cx; //cicleX circleY cx c1 etc cambiar a float
int c1;
int c2;
int x;
int y;

boolean b;

void setup() {
  size(200, 500); //(200, 500);

  cx = 10; //width/2
  c1 = color(255, 0, 255);
  c2 = color(0, 255, 255);
  x = 0; //width/2;
  y = height/2;

  b = true;

  background(c1);
}

void draw() {
  background(c1);
  noStroke();
  if (x == width) {
    x = 0;
  }
  if (b == true) {
    //ellipse cyan
    fill(c2);
    ellipse(x, y, cx, cx);
    
  } else if (b == false) {
    //ellipse magenta + fondo cyan
    background(c2);
    fill(c1);
    ellipse(x, y, cx, cx);
  }  
  x ++;
}

void keyPressed() {
  if (key == 'a') {
    b = true;
  }
  if (key == 's') {
    b = false;
  }
}

