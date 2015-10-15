// booleanas
boolean a; // = true; //a inicia como verdadero
void setup() {
  a = false;
}
void draw() {
  background(167);
  // si a es verdadero
  if (a == true) {
  background(0);
  } 
  // si a es falso
  else if (a == false) {
  background(255);
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

