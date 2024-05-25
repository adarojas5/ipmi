//Ada Maiten Rojas
//COM3
//TP2

int bruna = 0;
int animacion, pantalla, limiteDeAnimacion, opacidad, tamTexto;
PFont fuente;
PImage fondo, imagen1, imagen2, imagen3;
String texto1;
String texto2;
String texto3;
String texto4;
int tiempoInicio;
int tiempoTransicion = 5000; // 5 segundos para cada transición
void setup() {
  size(640, 480);
  animacion= 0;

  limiteDeAnimacion= 300;
  opacidad = 0;
  bruna=1;
  tamTexto= 28;
  fuente = loadFont("Century.vlw");
  textFont(fuente, 60);
  fondo = loadImage("Image.jpeg");
  imagen1 = loadImage("jardin.jpg");
  imagen2 = loadImage("jardin2.jpg");
  imagen3 = loadImage("jardin3.jpg");
  textSize(tamTexto);
  texto1 = "En abril de 2012, \nse realizó la primera presentación de \nesta pieza 'El jardín de las historias' \nuna instalación interactiva en el \nCentro Cultural Konex. ";
  texto2 = "En la instalación, una pantalla táctil \n proyecta un bosque virtual \nen el que los árboles están \nhechos de frases.";
  texto3 = "Cada árbol y cada rama representan una \nhistoria, escrita en colaboración \npor diferentes personas en un \nsitio web.";
texto4= "Gracias.";
}

void draw() {
  background(0);
  animacion++;

  if (animacion > 300) {
    animacion = 0;
    bruna++;
    if (bruna > 4) {
      bruna = 1;
  
   
    }
  }

  if (bruna == 1) {
    
    image (imagen1,20,20);
    text(texto1+ pantalla, animacion, height/2);
  }

  if (bruna == 2) {
        image (imagen2,20,20);

    text(texto2+ pantalla, 50, animacion);
  }

  if (bruna == 3) {
        image (imagen3,20,20);


    if (animacion < 255) {
      opacidad = animacion;
    }
    fill(255, opacidad);
    text(texto3+ pantalla, 50, height/2);
  }

  if (bruna == 4) {
   displayEndScreen();
  }
}
  

void displayEndScreen() {
  image(fondo, 0, 0, width, height);
  drawButton("Gracias", width / 2, height / 2 + 124);
}

void drawButton(String label, float x, float y) {
  fill(100);
  rect(x - 75, y - 25, 150, 50);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(label, x, y);
}
void mousePressed() {
  if (bruna == 0) {
    if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 99 && mouseY < height / 2 + 149) {
      bruna = 1; // Cambiar a la primera pantalla
      tiempoInicio = millis(); // Resetear el tiempo de inicio
    }
  } else if (bruna == 4) {
    if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 99 && mouseY < height / 2 + 149) {
      bruna = 0; // Volver al inicio
      tiempoInicio = millis(); // Resetear el tiempo de inicio
    }
  }
}
