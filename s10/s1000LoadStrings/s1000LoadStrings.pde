//UDD - Expresión Digital II
//s1000LoadString
/*
Cargar data desde un datos anual y 
 opcion1
 ir cambiando el index con el space bar o mouseX haciendo map
 opcion 2
 hacer una grilla de 31 x 12, x es 12 31 es y, 
 para cada x (mes) hay 31 y (dias)
 */

String datos []; // variable to hold the content of our file --  alist of all the meteoritos
String dia [][]; // 2d array
int index;

void setup() {
  size(800, 800);
  smooth();
  //cargar el archivo de datos
  datos = loadStrings("paris2014clima.csv");
  dia = new String[datos.length][22];
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
  index = 0;
}

void draw() {
  background(40);
  //  for (int index = 0; index < dia.length; index++) {
  fill(255);
  textSize(50);
  textAlign(CENTER);
  text(dia[index][0], width/2, height/2);
  float tam = float(dia[index][1]);
  float mapTam = map(tam, 0, 100, 0, width);
  ellipse(width/2, height/2, mapTam, mapTam);

  //  }
}


void keyPressed() {
  if (key == ' ') {
    index++;
  }
}

