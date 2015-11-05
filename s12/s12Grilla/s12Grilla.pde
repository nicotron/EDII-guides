//UDD - DISEÑO DIGITAL - EXPRESION DIGITAL II
//s10t01dos

int filas, cols;
String datos[];
String dia[][];

void setup() {
  size(12*40, 31*40);
  smooth();
  filas = 31;
  cols = 12;
  
  datos = loadStrings("paris2014clima.csv");
  dia = new String[datos.length][23];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
}

void draw() {
  background(253, 255);
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
//      noStroke();
//      fill(y * 45);
//      ellipse(x1, y1, 15,15);
      
//      fill(0);
//      textAlign(CENTER);
//      text("x " + x + " , " + "y " + y, x1, y1);

//      int nums = 1 + x+y*cols;
      int nums = 1 + y+x*filas;
      if ((nums >= 0) && (nums < datos.length)){
        String vientoDirT = dia[nums][22];
        float vientoDir = float(dia[nums][22]);
//      int nums = x+y*cols;
//      fill(0);
//      textAlign(CENTER);
//      text(nums, x1, y1);

        funcion(x1, y1, vientoDirT, vientoDir);
      
//      println('y' + " + " + 'x' + " * filas" + " = " + "nums");
//      println(y + " + " + x *filas  + " = " + nums);
      }
    }
  }
//  noLoop();
//  saveFrame("s12Grilla01-12x31-480_1240-dimension-certamen-5cms-2.png");
//  exit();
}



//println(y + " + " + x + " *31 " + " = " + a);

