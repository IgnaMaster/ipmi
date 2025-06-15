// Ignacio Macías, Comisión 1
// Nombre del proyecto: Pilares de Fuego (Desde:Imagen 16)
// https://youtu.be/Ih6U2mYn0EY

PImage OG16;
int cant = 14;                                              //cant=CANTIDAD DE HILERAS
int tam = 400/cant;                                         // tam=TAMAÑO

int r=0;                                                    //ROJO VARIABLE
int g=0;                                                    //VERDE VARIABLE
int b=0;                                                    //AZUL VARIABLE

void setup() {
  size(800, 400);
  background(255);
  noStroke();
  OG16=loadImage("16.png");
}

void draw() {
  image(OG16, 0, 0);                                        //IMAGEN ORIGINAL
  ellipseMode(CENTER);
  translate(400, 0);                                        //MOVIMIENTO DE LOS PUNTOS DE INICIO

  for (int x=0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      int U=1;
      int zero=0;

      float dist=distDiag(x, y);                            //dist= DISTANCIA ENTRE ELLIPSES
      float fact=map(dist, zero, cant, U, zero);           //fact=FACTOR DE CRECIMIENTO
      float diam=tam*fact;                                //diam= DIAMETRO DE LA ELLIPSE

      fill(r, g, b);
      hacerEl(x*tam + tam/2, y*tam + tam/2, diam);       //hacerEl = HACER UNA ELLIPSE
    }
  }
}
