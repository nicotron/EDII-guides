int cols, filas, c;
int margen;

void setup() {
  size(800, 800);
  smooth();
  cols = 20;
  filas = 20;
  margen = 50;
  
}

void draw() {
  background(240);
  for (int i = 1; i <= cols; i++) {
    for (int j = 1; j <= filas; j++) {
      //función con >= 4 argumentos
      //fn(int x, int y, int tm, color c)
      fn(i * ((width-margen)/cols), j * ((height-margen)/filas), i, i*20);
    }
  }
}


void keyPressed(){
  if(key == ' '){
    filas ++;
  }
}



