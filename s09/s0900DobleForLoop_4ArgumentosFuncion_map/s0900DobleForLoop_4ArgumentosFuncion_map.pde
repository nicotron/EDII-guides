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
//      float dtm = dist(mouseX, mouseY, width, height);
      float dtm = dist(0, 0, width*0.1, height*0.1);
      float m = map(dtm, mouseX, mouseY, i, j);
      println(dtm);
      fn(i * ((width-margen)/cols), j * ((height-margen)/filas), m, i*20);
      
    }
  }
}


void keyPressed(){
  if(key == ' '){
    filas ++;
  }
}

