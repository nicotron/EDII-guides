//UDD - DISEÑO DIGITAL - EXPRESION DIGITAL II
//s10t01dos

int cols, filas;
String datos[];
String dia[][];

void setup() {
  size(1000, 800);
  smooth();
  cols = 12;
  filas = 31;
  
  datos = loadStrings("paris2014clima.csv");
  dia = new String[datos.length][23];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
}

void draw() {
  background(253);
  for (int x = 0; x < filas; x++) {
    for (int y = 0; y < cols; y++) {
      float x1 = x * (width/filas) + (width/(filas*2));
      float y1 = y * (height/cols) + (height/(cols*2));
//      noStroke();
//      fill(y * 45);
//      ellipse(x1, y1, 15,15);
      
//      fill(0);
//      textAlign(CENTER);
//      text("x " + x + " , " + "y " + y, x1, y1);

      int nums = 1 + y+x*cols;
      if ((nums >= 0) && (nums < datos.length)){
        String vientoDirT = dia[nums][22];
        float vientoDir = float(dia[nums][22]);
//      int nums = x+y*filas;
//      fill(0);
//      textAlign(CENTER);
//      text(nums, x1, y1);

        funcion(x1, y1, vientoDirT, vientoDir);
      
//      println('y' + " + " + 'x' + " * cols" + " = " + "nums");
//      println(y + " + " + x *cols  + " = " + nums);
      }
    }
  }
  noLoop();
  saveFrame("s12Grilla01-12x31-funcion-lectura-doble-de-misma-columna.png");
  exit();
}



//println(y + " + " + x + " *31 " + " = " + a);

