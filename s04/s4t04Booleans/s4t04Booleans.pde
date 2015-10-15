// booleanas
boolean a; // = true; //a inicia como verdadero
void setup() {
  a = true;
}
void draw() {
  background(222);
  // si a es verdadero
  if (a == true) {
    strokeWeight(10);
    line(20, 20, 80, 80);
  } 
  // si a es falso
  else if (a == false) {
    strokeWeight(5);
    line(20, 80, 80, 20);  // This line is not drawn
  }
}

void keyPressed() {
  if (key == 'a') {
    a = true;
  }
  if (key == 's') {
    a = false;
  }
}

