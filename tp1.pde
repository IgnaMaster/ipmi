PImage miImagen, CHATGRILLA;
void setup() {
  size (952, 400);
miImagen = loadImage("kick2.jpg");
CHATGRILLA = loadImage("CHATGRILLA.png");
// EL NUMERO ES 476
}

  void draw() {
     background(57, 50, 47);
     image(miImagen, 0, 0, 476, 400);
   //  image (CHATGRILLA, 0, 0, 476, 400);
  //   CHATGRILLA.resize(476, 400);
     stroke(255, 0, 0);
     line(476, 0, 476, 400);
     //BASICO ^^
     stroke(255, 255, 255);
     
     ellipseMode(CENTER);
     stroke(0);
     strokeWeight(3);
     fill(255, 255, 255);
    ellipse(700, 400, 140, 190);
    fill(255, 255, 255);
   //trapecio
   quad(646, 340, 670, 300, 732, 300, 754, 340);
   ellipseMode(CORNER);
  
  stroke(255, 0, 0);
   fill(254, 200, 128);
   stroke(0);
   strokeWeight(5);
   triangle(720, 310, 680, 310, 701, 358);
   
   strokeWeight(1);
   fill(255);
   stroke(0);
     strokeWeight(5);
   ellipse(580, 78, 240, 244);
   
   fill(254, 200, 128);
   stroke(0);
   strokeWeight(6);
   ellipse(600, 120, 200, 202);
   
   //OJOS--VVVV
   fill(255);
   stroke(0);
   strokeWeight(2);
   ellipse(620, 220, 70, 52);
   ellipse(710, 220, 70, 52);
   
  
     //pupilas
     stroke(0);
     fill(255);
   strokeWeight(5);
   ellipse(728, 250, 12, 11);
   ellipse(658, 250, 12, 11);
   
   fill(255);
   stroke(0);
   strokeWeight(5);
   ellipse(590, 180, 219, 77);
   
   strokeWeight(1);
   stroke(255);
   fill(255);
   ellipse(598, 100, 208, 156);
   
   fill(255);
   rect(588, 192, 224, 42);
   
   stroke(0);
   strokeWeight(3);
   line(628, 270, 672, 286);
    line(626, 270, 625, 273);
    
    //ROJO
    stroke(238, 0, 2);
    fill(238, 0, 2);
    rect(663, 88, 72, 163);
   // ellipseMode(CENTER);
    ellipse(663, 82, 72, 14);
    ellipse(663, 245, 72, 10);
    
    
    
    
   //ANTERIORES--V
  //  fill(255);
 //stroke(0);
 //strokeWeight(2);
  //ellipse(615, 225, 70, 50);
   //ellipse(715, 225, 70, 50);
   
   //fill(255, 0, 0);
   //stroke(0);
   //strokeWeight(2);
   //ellipse(600,180, 234, 77);
   
   //strokeWeight(1);
   //stroke(255);
 //  fill(255);
  // ellipse(600, 100, 200, 156);
 
   
  }
