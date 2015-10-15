// UDD - Expresión Digital II
// ++ -- += -= *= /=

// Variables declara, inicializa, usa
int cx; //cicleX circleY cx c1 etc cambiar a float
int c1;
int c2;

void setup() {
  size(500, 500);

  cx = 10; //width/2
  c1 = color(255, 0, 255);
  c2 = color(0, 255, 255);
  
  background(c1);  
}

void draw() {
  noStroke();
  //ellipse cyan
  fill(c2);
  ellipse(width/2, height/2, cx, cx);
}

