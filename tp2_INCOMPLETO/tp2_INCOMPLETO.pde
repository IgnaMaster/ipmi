//Sonido e imágenes
import processing.sound.*;
SoundFile file;
PImage miImagen, Rifle, FLEMING, LIBRO, LIBROS, NOIR2;

//Mov. rifle 1
int XRifleM1= 0;
int XRifleM2 = 0;
int YRifleM1= 0;
int YRifleM2 = 0;
boolean ANIMARX = true;
boolean ANIMARY = true;
boolean RESET = false;
int XTEXTO = 0;

void setup() {
  size(640, 480);
  miImagen=loadImage("BondPoster.jpg"); 
  Rifle=loadImage("Rifle.png");
  frameRate(20);
  //Mov.Rifle 2
  XRifleM1= 0;
  YRifleM1= -230;
  XRifleM2 = 1600;
  YRifleM2 = 925;
  
  //pag 2
  XTEXTO = -40;
  FLEMING= loadImage("FLEMING.png");
  LIBRO= loadImage("LIBRO.png");
  LIBROS= loadImage("LIBROS.png");
  NOIR2= loadImage("NOIR2.jpg");
     
  // CODIGO DEL SONIDO [IMPORTANTE]
  file = new SoundFile(this, "AUDIO1.mp3");
  file.play();
}

void draw() {
  
   
  println(frameCount);
  background(255);
  
    //PRIMERA PANTALLA Circulo negro y portada
  
image(miImagen, 0, 0, 640, 480);
image(Rifle, XRifleM1, YRifleM1, XRifleM2, YRifleM2); 

if(ANIMARX){
XRifleM1 = XRifleM1 -1;
XRifleM2 = XRifleM2 - 1; 
}

if (frameCount > 337 && ANIMARY){
  YRifleM1 = YRifleM1 -1;
  YRifleM2 = YRifleM2 - 1; }
  
if(frameCount > 420){
  ANIMARX = false;
}
  
  if(frameCount > 420){
    ANIMARY = false;
}

if(frameCount > 440){
  XRifleM1 = XRifleM1 - 12;
  XRifleM2 = XRifleM2 + 24;
  YRifleM1 = YRifleM1 - 12;
  YRifleM2 = YRifleM2 + 24;
}
  if(frameCount > 455){
  XRifleM1 = XRifleM1 - 18;
  XRifleM2 = XRifleM2 + 35;
  YRifleM1 = YRifleM1 - 20;
  YRifleM2 = YRifleM2 + 35;
  }
  
  if(frameCount > 550){
  XRifleM1 = XRifleM1 - 30;
  XRifleM2 = XRifleM2 + 63;
  YRifleM1 = YRifleM1 - 28;
  YRifleM2 = YRifleM2 + 58;
  }
  
if(frameCount > 770){
  background(0);
}
  
  
  
  //SEGUNDA PANTALLA (Basada en la novela de Ian Fleming)
  
 // if (frameCount > 778 && ANIMARX);{
 //   background(40);
 //   image(NOIR2, 0, 0, 640, 480);
 //image(FLEMING, 434, 170, 190, 290);
 //image(LIBRO, 25, 30, 105, 160);
 //image(LIBROS, 130, 30, 280, 160);
 //textAlign(CENTER);
 //textSize(22);
 //stroke(3);
 //fill(255);
 //text("Tanto el personaje de James Bond\ncomo sus películas tuvieron origen en\nuna saga de libros del\nreconocido escritor Ian Fleming.\n\nEl libro 'DR. NO' (en el que se basa la primera)\nfue publicado en 1958.\n\n(Curiosamente, es el segundo libro)", XTEXTO, 250);
 //ANIMARX = true;
 // }
 
 //if (ANIMARX);{
 // XTEXTO = XTEXTO+5;
 //}
 
 // if (frameCount == 835){
 //   ANIMARX = false;
 // }
  
  //TERCERA PANTALLA (CUANDO SALIÓ LA PELÍCULA)
  if (frameCount > 1170){
    background(0, 255, 0);
  
  //CUARTA PANTALLA (Director/productores)
  if (frameCount > 1464){
    background(0, 0, 255);
  }
  
  //QUINTA PANTALLA (Actores principales)
  if (frameCount > 1742){
    background(255);
  }
  
  //SEXTA PANTALLA (BOTÓN FINAL)
  if (frameCount > 1980){
    background(0);
  ellipse (320, 300, 130, 130);
  if(mouseX>255 && mouseY>235 && mouseX<385 && mouseY<366){
    fill(255, 0, 0);
  }
  else{
    fill(255);}
    
     if (mouseX>255 && mouseY>235 && mouseX<385 && mouseY<366){
      RESET = true;}
  }
  }
}

//Entrego vergonzosamente lo que tenía hasta antes de que se me cortara la luz.
