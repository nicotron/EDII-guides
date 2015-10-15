int cols, filas, c;
int margen, ma;
int [] colores;
color [][] mc;

void setup() {
  size(800, 800);
  smooth();
  cols = 20;
  filas = 20;
  margen = 50;
  colores = new int[3];
  mc = new color [cols][filas];
  colores[0] = color(255, 0, 255);
  colores[1] = color(255, 255, 0);
  colores[2] = color(0, 255, 255);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < filas; j++) {
      mc[i][j] = colores[(int)random(3)];
      ma = colores[(int)random(3)];
    }
  }
}

void draw() {
  background(240);
  for (int i = 1; i <= cols; i++) {
    for (int j = 1; j <= filas; j++) {
      //función con >= 4 argumentos
      //fn(int x, int y, int tm, color c)
      fn(i * ((width-margen)/cols), j * ((height-margen)/filas), i, ma);
    }
  }
}


void keyPressed() {
  if (key == ' ') {
    filas ++;
  }
}

