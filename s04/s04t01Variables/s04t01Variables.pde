// UDD - Expresión Digital II
// flow + variables
// color 1, color 2, blanco, negro

// Variables declara, inicializa, usa
int ellipseSize; //cicleX circleY cx c1 etc 

void setup() {
  size(500, 500);
  background(0);
  
  ellipseSize = 250; //width/2
}

void draw() {
  fill(255);
  rect(0, height/2, width, height);

  noStroke();
  //ellipse magenta
  fill(255, 0, 255);
  ellipse(width/2 - ellipseSize/2, height/2, ellipseSize, ellipseSize);

  //ellipse amarilla
  fill(255, 255, 0);
  ellipse(width/2 + ellipseSize/2, height/2, ellipseSize, ellipseSize);
}


