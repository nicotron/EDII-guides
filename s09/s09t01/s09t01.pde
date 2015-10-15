int cols, filas, c;
int margen;

void setup() {
  size(800, 800);
  smooth();
  cols = 1;
  filas = 1;
  margen = 200;
}

void draw() {
  background(40);
  for (int i = 0; i <= cols; i++) {
    for (int j = 0; j <= filas; j ++) {
      //función con >= 4 argumentos
      //fn(int x, int y, int tm, color c)
      fn(margen + i * ((width-(margen*2))/cols), margen + j * ((height-(margen*2))/filas), (i+1) * 50 + (j+1) * 25, i+j);
    }
  }
}


void keyPressed() {
  if (key == ' ') {
    filas ++;
    cols ++;
  }
}

