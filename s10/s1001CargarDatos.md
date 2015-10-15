# Cómo cargar bases de datos  
Las bases de datos pueden venir en diferentes formatos de texto, en general se usan csv (Comma-separated value) ó xls, y podemos acceder a ellas desde el archivo, dentro de la carpeta `data` o desde una [URL](http://www.wunderground.com/history/airport/KPRX/2014/1/1/CustomHistory.html?dayend=31&monthend=12&yearend=2014&req_city=&req_state=&req_statename=&reqdb.zip=&reqdb.magic=&reqdb.wmo=&format=1) 

### Cargar y seccionar la base de datos
Para cargar datos tenemos que llamar a una serie de funciones y objetos:
- Tener una base de datos en la carpeta `data`
- Crear un objeto `String []` para almacenar toda la base de datos en líneas
- Crear un objeto `String [][]` con dos entradas para tener acceso a cada espacio de la base de datos

```{processing}
String datos[]; //variable para cargar el archivo
String dia[][]; //variable para cargar cada celda

void setup(){
  //cargar el archivo de datos
  datos = loadStrings("paris2014clima.csv"); 
  dia = new String[datos.length][22];
}
```
En el primer array `datos`, con la función `String[datos.length]` le estamos diciendo que acceda a toda la dimensión de los datos, va por cada línea de la base de datos. En el segundo `[22]` es el número de columnas que tiene la base de datos, 23 en este caso, número en que podemos acceder al abrir el archivo de la base de datos y simplemente contar cuantas palabras hay en la primera línea de texto. ¿Por qué es 22?

Podemos saber que tenemos lectura de cada línea de la base de dato, imprimiéndola por completo.
```{processing}
for (int i = 0; i < datos.length; i++) {
	 println(datos[i]);
	 println(i); //sabremos que está bién porque son 365 días del año en 366 espación con el 0 como el header
  }
  ```
Nos damos cuenta porque cada valor está separado por `,`

- Luego hay que separar los valores de cada fila para poder iterar por filas y columnas de toda la base de datos.
```{processing}
for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(",");
  }
```
Sabremos que está todo separado si imprimimos los valores de `dia[i]` usando `println(dia[i]);` y no hay `,` que los separen.

# Usando cada fila y celda para dibujar
Una vez iterado todo para separar por líneas y luego separar esas líneas cada coma, podemos tomar los valores de cada columna y usarlos para los argumentos de las funciones de dibujo de Processing o las que nosotros hemos creado. Y se hace con el mismo método que usamos en el `void setup()`

Por ejemplo si queremos usar la columna de la velocidad máxima de viento de París, sabiendo que esa columna es la número 17, pero la número `[16]` en Processing, tenemos que iterar todos los `dia[]` de la columna `[16]` y podemos saber imprimiendo los valores en la consola

```{processing}
void draw() {
  background(40);
  for (int i = 0; i < dia.length; i++) {
  	println(dia[i][16]);
  }
}
```
Si nos queremos asegurar una vez más con otro método podemos imprimir un fila y celda específica y compararla con nuestro archivo que contiene la base de datos  
`println(dia[2][16]);` Debería imprimir?

Con esto ya podemos dibujar usando datos externos, por ejemplo las fechas de los días
```{processing}
fill(255);
textSize(50);
textAlign(CENTER);
text(dia[i][0], width/2, height/2);
```

Usar este código solo para ejemplo de función, además incorporar map  
`ellipse(width/2, height/2, dia[index][1], dia[index][1]);`  
Da error porque hay que usar el tipo de variable y convertir los valores  
`ellipse(width/2, height/2, float(dia[index][1]), float(dia[index][1]));`  
También se puede usar una variable nueva para mejor lectura  
```{processing}
float tam = float(dia[index][1]);
ellipse(width/2, height/2, tam, tam);
ellipse(width/2, height/2, float(dia[index][1]), float(dia[index][1]));
```
Si los valores expresados en pixeles son muy pequeños y no queremos ir multiplicándolos a mano, podemos usar la función `map`  
```{processing}
float mapTam = map(tam, 0, 100, 0, width);
ellipse(width/2, height/2, mapTam, mapTam);
```
***mostrar como se puede ir visualizando con index como contador y no un for loop  
pedirles que lo integren a sus funciones con diferentes `dia[i][diferente]` para diferentes dibujos***