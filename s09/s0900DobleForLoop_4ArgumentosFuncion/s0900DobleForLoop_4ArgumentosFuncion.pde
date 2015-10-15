int cols, filas, c;
int margen;

void setup() {
  size(800, 800);
  smooth();
  cols = 3;
  filas = 3;
  margen = 0;
}

void draw() {
  background(240);
  for (int i = 0; i <= cols; i++) {
    for (int j = 0; j <= filas; j ++) {
      //función con >= 4 argumentos
      //fn(int x, int y, int tm, color c)
            fn(i * ((width-margen)/cols), j * ((height-margen)/filas), 20, i*j);
      
    }
  }
}


void keyPressed() {
  if (key == ' ') {
    filas ++;
    cols ++;
  }
}


