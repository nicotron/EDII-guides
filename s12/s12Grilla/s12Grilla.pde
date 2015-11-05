//UDD - DISEÑO DIGITAL - EXPRESION DIGITAL II
//s10t01dos

int cols, filas;
void setup() {
  size(800, 800);
  smooth();
  cols = 5;
  filas = 7;
}

void draw() {
  background(253);
  for (int x = 0; x < filas; x++) {
    for (int y = 0; y < cols; y++) {
      float x1 = x * (width/filas) + (width/(filas*2));
      float y1 = y * (height/cols) + (height/(cols*2));
      ellipse(x1, y1, 5, 5);
    }
  }
  saveFrame("s12Grilla01-7x5-ellipse.png");
  exit();
}



//println(y + " + " + x + " *31 " + " = " + a);

