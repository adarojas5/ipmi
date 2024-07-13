PImage img1, img2, img3;
float posX, posY;
int estado;
float opacidadTexto = 255;

// fuente 
PFont miFuente;

//variable para contar fotogramas:
int contador;

String texto1, texto2, texto3;



void setup() {
  size(640, 480);
  img1 = loadImage("img4.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");

  //textos:
  texto1 = "El jardin de las historias";
  texto2 = "Se trata de una instalación interactiva con una gran pantalla y la proyección de un bosque virtual, cuyos árboles se componen de frases.";
  texto3 = "Cada árbol y cada rama representan un relato, construyéndo una historia con la participación de diferentes personas.";

  //cargo la fuente
  miFuente = loadFont("arial.vlw");
  textFont( miFuente );
  textAlign(LEFT);

  // estado 1
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}
void draw() {
  println("estado="+estado);
 background(0, 0, 0);
  if ( estado == 1 ) {
    //pantalla 1
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY, 600, 200);

    //cuentadorfotogramas 
    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {
    image( img1, 0, 0, width, height);
    fill(255, opacidadTexto);
    textSize( map(opacidadTexto, 255, 0, 48, 0 ) );
    text ( texto1, posX, posY, 600, 200);

    opacidadTexto-=3;
    if (opacidadTexto<=0) {
      //cambio el estado:
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
    }
  } else if ( estado == 3 ) {    //pantalla 2

    image( img2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto2, posX, posY, 600, 200);

    //cuento los fotogramas y veo si cambio:
    contador++;
    if ( contador>=60 ) {
      //este es un cambio de estado:
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {

    image( img2, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto2, posX, posY, 600, 200);

    posX+=4;
    if (posX>=width) {
      //cambio el estado:
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
    
     } else if ( estado == 5 ) {//pantalla 3
    
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto3, posX, posY, 600, 200);
    
    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
     } else if ( estado == 6) {

    image( img3, 0, 0, width, height);
    fill(255);
    textSize(28);
    text ( texto3, posX, posY, 600, 200);

   
    posX+=5;
    if (posX>=width) {
      //cambio el estado:
      estado = 7;
      contador = 2;
      posX = 20;
      posY = 320;
    }
  } else if ( estado == 7 ) {
    
    background(31, 70, 49);
    if ( mouseX>200 && mouseX<200+150
      && mouseY >300 && mouseY<300+80 ) {
      fill(0, 0, 0);
    } else {
      fill(200);
    }
    rect( 200, 300, 150, 80);
   
  } else {
    //un estado no previsto
  }
}





void mousePressed() {
  if ( estado==7) {
    
    if ( mouseX>200 && mouseX<200+150
      && mouseY >300 && mouseY<300+80 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
