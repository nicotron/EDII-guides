// 3 import processing.pdf.*;


PFont f;
String s;
void setup() {
  size(500, 500);
  smooth();
  
  s = "!Esta clase es la mejor del mundo";
  f = createFont("HiraginoSans-W2", 50);
  println(PFont.list());
}

void draw() {
  textFont(f);
  textSize(30);
  text(s, 10, 250);
}


// 1 save("filename.ext");
// 2 saveFrame("line-######.png");
// 3 save("filename.ext");

