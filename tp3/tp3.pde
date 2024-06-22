//https://youtu.be/q8OeXEGOdrA
/*Rojas Ada
 COM3
 tp3 */
//DECLARACIONES DE VARIABLES
PImage img1;// almacena imagen
int cantY = 10; //num de filas de la cuadricula
int cantX = 10; //=num de columnas 
int estado; //estado del programa
int contador;//contador de fotogramas
 

void setup () {
  size (800, 400);// tamaño de la ventana 800 de ancho 400 de alto
  img1= loadImage ("foto42.png"); //carga la imagen
}

void draw () {
  obra(); //llama a la funcion que dibuja la imagen
  dibujarGrilla ();// llama a la funcion que dibuja grilla
  println("estado="+estado);// imprime el estado actual en la consola 
}

void obra() {
 background(0);//fondo negro
  image (img1, 0, 0, width/2, height);// imagen ocupando mitad izq 
}

void dibujarGrilla() {
  float modY = 400/cantY;//calculan la altura (modY) y el  ancho(modX) de las celdas de la cuadricula 
  float modX = 400/cantX;//
  
  for ( int j=0; j<cantY; j++) { // dos bucles. PARA LAS FILAS
    for ( int i=0; i<cantX; i++) {// PARA LAS COLUMNAS

      if  ( ( i+j)%2==0) {//  alterna los colores de relleno entre negro y blanco para crear un patron de tablero de ajedrez
        fill (0);// lo determina si la suma de los indices de la fila y la columna es par la celda se pinta de negro.
      } else {
        fill (255);// si es impar, de blanco
      }

      float despX = 0; // desclazamiento horizontal
      if ( j%1==0 ) {
        despX = (frameCount*.1)%modX*10;//depende de un numero de fotogramas  multiplicado por un factor para controñar su velocidad,
        //el (%modX) asegura desplazamiento dentro del ancho 
      }
      if ( estado == 1 ) { //pantalla 1

        //cuento los fotogramas y veo si cambio:
        contador++;
        if ( contador>=0 ) {
          // cambio de estado:
          //del estado 1  a  2
          estado++;
          
        }
      } else if ( estado == 2) {
        //pantalla 2

        rect ( 400+i*modX+despX, j*modY, modX, modY); //rectangulos del lado derecho con su funcion de desplazamiento
        ellipse (400+i*modX+modX/2, j*modY+modY/2, random(20), 20); // elipse en el centro de cada celda (con tamaño aleatorio)
      }
    }
  }
}


void mousePressed() { // se ejecuta cuando se hace clic con el mouse 
  estado++;// incrementa el estado
//contador=0;
  if ( estado > 3) { //asegura que el estado alterna esntre 1 2 3 
    estado = 1;
  }
}
