// Ignacio Macías, Comisión 1
// Nombre del proyecto: Pilares de Fuego (Desde:Imagen 16)

//FUNCIONES/VOIDS TP3<<<<<<<

int U = 1;
void hacerEl(float x, float y, float diam) {        // hacer Ellipse
  ellipse(x, y, diam, diam);
}

float distDiag(int x, int y) {                     // LAS FUNCIONES TIPO VOID NO PUEDEN RETORNAR VALORES (Distancia Diagonal)
  if ((cant-U-x) >y){
    return (cant-U-x)-y;
  }
    else {
    return y-(cant-U-x);
  }
}

void mousePressed() {

  tam ++;
  fill(r+=16, g, b);
  fill(g+=3);
  stroke(164, 13, 20);
  fill(255, 0, 0);
  
}

void keyPressed() {

  background (255);
  tam=400/cant;
  r = b;
  g = b;
  noStroke();
}
