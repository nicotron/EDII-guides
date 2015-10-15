// UDD - Expresión Digital II
// s0702FuncionesPropias

color m, c, y;

void setup() {
  size(400, 400);
  smooth();
  
  //inicialización de colores
  m = color(255, 0, 255);
  c = color(0, 255, 255);
  y = color(255, 255, 0);

}

void draw() { 
  background(m);
  
  mickeymouse(mouseX, mouseY, mouseX * .1);
}

//función que crea un círculo con 4 círculos en sus extremos que se alejan y acercan
void mickeymouse(float posx, float posy, float altura) {
  
  strokeWeight(altura * 0.1);
  line(posx - 20, posy, posx + 20, posy);
  
  strokeWeight(5);
  stroke(c);
  noFill();
  ellipse(posx, posy, altura, altura);
}





//
