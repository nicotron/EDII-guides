// UDD - Expresión Digital II
// s03intro

int[] col = new int[3];

void setup() {  
  col[0] = color (255, 255, 0);  // Assign value to first element in the array
  col[1] = color (255, 0, 255); // Assign value to second element in the array
  col[2] = color (0, 255, 255);  // Assign value to third element in the array

  size(800, 600);
  //  frameRate(1);
  smooth();
}

void draw() {
  frameRate(1);

  int este = (int)random(3);
  background(col[este]);

  este = (int)random(3);
  strokeWeight((int)random(10, 40));
  stroke(col[este]);
  este = (int)random(3);
  fill(col[este]);
  ellipse(200*(int)random(1, 4), 150*(int)random(1, 3), 200, 200);

  este = (int)random(3);
  strokeWeight((int)random(100, 800));
  line(width*(int)random(2), height*(int)random(2), width*(int)random(2), height*(int)random(2));

  if (keyPressed == true) {
    if (key == 'a') {
      frameRate(10);
    }
    if (key == 's'){
      frameRate(30);
    }
  }
}

