#Importar archivos SVG
Al igual que cada variable `float, int, boolean` y objetos `PImage, String` para usar archivos SVG debemos **declarar, inicializar y usar la variable.**  

```{processing}
// Declarar la variable que tendrá el archivo SVG
PShape s;

void setup() {
  size(640, 360);
  s = loadShape("s.svg");
} 

void draw(){
  background(102);
  shape(s, 280, 40); // variable, posX, posY    
  shape(s, 110, 90, 100, 100);  // variable, posX, posY, tamX, tamY 
}
```

Los archivos SVG pueden ser modificados con `fill` y `stroke` para eso hay que bloquear la información que contiene el SVG, se hace con el método `nombreDeVariable.disableStyle();` para volver al estado del SVG `nombreDeVariable.enableStyle();`
```{processing}
// Declarar la variable que tendrá el archivo SVG
PShape s;

void setup() {
  size(640, 360);
  s = loadShape("s.svg");
} 

void draw() {
  background(102);
  s.disableStyle();
  stroke(255, 0, 255);
  shape(s, 280, 40); // variable, posX, posY    

  s.enableStyle();
  shape(s, 110, 90, 100, 100);  // variable, posX, posY, tamX, tamY
}
```
