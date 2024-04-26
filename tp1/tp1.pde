PImage miFoto;

void setup() {
  size(800, 400);
  miFoto = loadImage("descarga.png");
  background (237, 235, 235);//color de fondo
  line(width/2, 0, width/2, height );//linea en el medio
  noStroke();
  fill(167, 166, 166);//color de sombra
  ellipse(600, 380, 180, 30);//sombra
}
void draw() {
  image(miFoto, 0, 0, 400, 400 ); // tamaño de la foto

  println("X");//VER COORDENADAS
  println(mouseX);
  println("Y");
  println(mouseY);

  strokeWeight(35);//grosor
  line (570, 330, 570, 370);
  line (625, 330, 625, 370);
  strokeWeight(7); // grosor 
  //CUERPO
  strokeWeight(7); // grosor
  fill(222, 31, 31);   //color rojo
  rect (544, 238, 109, 90);//cuerpo
  fill(255, 245, 234);//color de manos
  arc(520, 304, 35, 40, 0, PI); //manos izq
  arc(672, 304, 34, 46, 0, PI); //manos der
  fill(222, 31, 31);   //color rojo
  triangle(537, 238, 541, 317, 501, 296);//brazo izquierdo
  triangle(657, 233, 657, 317, 689, 300);//brazo derecho




  //CARA
  noStroke();
  fill(10, 10, 10);//color de pelo
  ellipse(470, 90, 90, 90);//pelo
  ellipse(730, 90, 90, 90);//pelo
  fill(222, 31, 31);//color de gomitas de pelo
  ellipse(507, 119, 70, 70);//gomitas de pelo
  ellipse(691, 118, 70, 70);//gomitas de pelo
  fill(10, 10, 10); //color de ellipse
  ellipse(600, 150, 250, 190);//circulo mas gande
  fill(255, 245, 234);// color claro
  ellipse(600, 160, 200, 150);// circulo mas chico
  noFill();
  noStroke();//sin borde
  fill(255, 82, 82);//color de mejillas
  ellipse (540, 190, 20, 20);//mejilla izquierda
  ellipse (666, 190, 20, 20);//mejilla derecha
  noFill(); // sin relleno para la sonrisa
  stroke(0); // color negro para la línea de la sonrisa
  strokeWeight(7); // grosor de la línea de la sonrisa
  arc(width/2+200, height/2-5, 20, 20, 0, PI);// sonrisa
  line(517, 153, 573, 168);//ojo izq
  line(676, 153, 626, 168);//ojo der
  arc(525, 114, 56, 5, PI+QUARTER_PI, TWO_PI);//ceja izq
  arc(661, 118, 50, 11, PI+QUARTER_PI, TWO_PI); //ceja der
}
