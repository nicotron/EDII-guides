#Rotate TWO_PI
Processing tiene una extraña forma de contar ángulos de rotación, normalmente nosotros lo hacemos desde 0 a 360 mientas Processing lo hace desde 0 a 2π. Para nosotros, los humanos, es más fácil saber que 90º es 360/4 y no 2π/4 ó 2π * 0.25, ¿qué pasa si queremos usar 37º o si una base de datos tiene diferentes ángulos? nuestra cabeza podría derretirse de tanto pensar…  

Lo que podemos hacer es una relación entre las dos formas de ver los ángulos  
Ya sabemos que 0 es 0º y TWP_PI es 360º, podemos hacer una variable que nos de un valor por ángulo, si dividimos TWO_PI por 360 tendremos valores para cada ángulo
```{processing}
float angulo = 0;
float conversion = angulo * TWO_PI/360;
```
De esta manera `angulo` es la variable que cambiamos y que tiene valores que conocemos y `conversion` es la variable que Processing entiende, todos felices. 

Por defecto el 0 queda en la posicón del 3 en un reloj circular, ¿cómo podemos hacer que el 0 inicie a las 12 del reloj circular?

**Uso  
cambiar variables por a y af
usarla en el draw para que se actualice la expresión
translate
rotate(af)
linea

key pressed 
a++;

