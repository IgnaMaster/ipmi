//Sonido e imágenes
import processing.sound.*;
SoundFile file;
PImage miImagen, Rifle, Flem, LIB, LINEA, PB, TER, JOA, RIC, BER, L2, CAST, SEAN, W1, BERRA, MP, NO, NEGRO, BARRIL1, BARRIL2;
float OPAC = 0;
float OPAC2 = 0;
float OPAC3 = 0;
float OPAC4 = 0;
boolean CONTADOR_ON = true;
int CONTADOR = 0; // CONTADOR PROPIO MODIFICABLE

//Mov. rifle 1
boolean ACT1 = true;
boolean RifleM0 = true;
int XRifleM1= 0;
int XRifleM2 = 0;
int YRifleM1= 0;
int YRifleM2 = 0;
boolean ANX = true;
boolean ANY = true;

//Mov Pag. 2
boolean ACT2=true;
int YTXT = 500;
int YLB = - 200;
boolean TXTM = true;
boolean LBM = true;

//Mov Pag. 3
boolean TXT2M = true;
int YTXT2 = 500;
boolean ACT3 = true;

//Mov Pag. 4
boolean AUY = true;
boolean AUX = true;
int AUMX = 680;
float AUMY1 = 500;
float AUMY2 = 639;
float AUMY3 = 778;
int TXT3;
boolean PAG4eu = true;

//Mov. Pag. 5
float CASTX = 0;
float SPD = 20;
float PPL = 500;
boolean ACT5 = true;

//Mov. Pag. 6
int FINALT = 0;
boolean FINTXTM = true;
int FINALMLINE = -30;

void setup() {
  size(640, 480);

  //PAGINA 1
  miImagen=loadImage("BondPoster.jpg");
  Rifle=loadImage("Rifle.png");
  reiniciarRifle();
  //Mov.Rifle 2
  if (RifleM0) {
    XRifleM1= 0;
    YRifleM1= -230;
    XRifleM2 = 1600;
    YRifleM2 = 925;
  }

  // CODIGO DEL SONIDO [IMPORTANTE]
  file = new SoundFile(this, "AUDIO1.mp3");
  file.play();


  //PAGINA 2

  Flem=loadImage("Flem.png");
  LIB=loadImage("LIB.png");
  LINEA=loadImage("LINEA.png");

  //PAGINA 3
  PB=loadImage("PB.jpg");

  //PAGINA 4
  TER=loadImage("TER.png");
  JOA=loadImage("JOA.png");
  BER=loadImage("BER.png");
  RIC=loadImage("RIC.png");
  L2=loadImage("LINEA 2.png");

  //PAGINA 5
  CAST=loadImage("CAST.png");
  SEAN=loadImage("SEAN.png");
  W1 =loadImage("W1.png");
  BERRA=loadImage("BERRA.png");
  MP=loadImage("MP.png");
  NO=loadImage("NO.png");
  NEGRO=loadImage("NEGRO.png");

  //PAGINA 6
  BARRIL1=loadImage("BARRIL1.png");
  BARRIL2=loadImage("BARRIL2.png");
}


void draw() {
  if (CONTADOR_ON) {
    CONTADOR = CONTADOR + 1;
  }
  noTint();
  println(CONTADOR);

  if (ACT1) {

    //PRIMERA PANTALLA Circulo negro y portada
    image(miImagen, 0, 0, 640, 480);
    image(Rifle, XRifleM1, YRifleM1, XRifleM2, YRifleM2);

    if (CONTADOR < 208 && CONTADOR > 0 && ANX) {
      XRifleM1 = XRifleM1 -2;
      XRifleM2 = XRifleM2 - 2;
    }

    if (CONTADOR > 148 && ANY) {
      YRifleM1 = YRifleM1 -1;
      YRifleM2 = YRifleM2 - 1;
    }

    if (CONTADOR > 208) {
      ANX = false;
    }

    if (CONTADOR > 235) {
      ANY = false;
    }

    if (CONTADOR > 260) {
      XRifleM1 = XRifleM1 - 12;
      XRifleM2 = XRifleM2 + 24;
      YRifleM1 = YRifleM1 - 12;
      YRifleM2 = YRifleM2 + 24;
    }
    if (CONTADOR > 276) {
      XRifleM1 = XRifleM1 - 18;
      XRifleM2 = XRifleM2 + 35;
      YRifleM1 = YRifleM1 - 20;
      YRifleM2 = YRifleM2 + 35;
    }

    if (CONTADOR > 330) {
      XRifleM1 = XRifleM1 - 30;
      XRifleM2 = XRifleM2 + 63;
      YRifleM1 = YRifleM1 - 30;
      YRifleM2 = YRifleM2 + 58;
    }
    if (CONTADOR > 515) {
      XRifleM1 = 0;
      XRifleM2 = 0;
      YRifleM1 = 0;
      YRifleM2 = 0;
    }

    if (CONTADOR > 490) {
      background(0);
    }
  }
  //PAGINA 2 AUTOR Y LIBRO
  if (CONTADOR > 491) {
    if (ACT2) {
      image(LINEA, 0, 30, 640, 480);

      if (CONTADOR > 497) {
        image(Flem, 300, 40, 378, 480);
        image(LIB, 120, YLB, 130, 180);
        textAlign(CENTER);
        textSize(18);
        text("Tanto el personaje de James Bond\ncomo sus películas adaptan\nla famosa saga de libros del\nreconocido escritor Ian Fleming.\n\nEl libro 'DR. NO' (en el que se basa\nla primera película) fue publicado\nen 1958.\n\n(Curiosamente, es el sexto libro de la saga\nliteraria, pero el primero en películas)", 190, YTXT);
        if (TXTM) {
          YTXT = YTXT -2;
        }
        if (LBM) {
          YLB = YLB + 5;
        }

        if (CONTADOR > 541) {
          LBM = false;
        }
        if (CONTADOR > 625) {
          TXTM = false;
        }
      }
    }
  }
  //TERCERA PÁGINA (PELÍCULA)

  if (CONTADOR > 756 && ACT3) {
    if (ACT3) {
      image(PB, -30, 0, 670, 480);
      textAlign(CENTER);
      textSize(20);
      stroke(3);
      text("SINOPSIS:\n\nEl agente británico James Bond es enviado\na Jamaica para investigar la\ndesaparición de un compañero agente.\nMientras investiga, 007 descubre que estos\nasesinatos están relacionados con interferencias\nen los lanzamientos espaciales de EEUU.\n\nSu indagación lo lleva a la isla Crab Key,\ndonde se encuentra con el Dr. No, un \ncientífico que planea sabotear\nel programa espacial estadounidense utilizando\nsu estación de control.\n\nDesde ahí, la misión del agente Bond\nserá infiltrarse en la isla para frustrar su plan.", 220, YTXT2);
      if (TXT2M) {
        YTXT2 = YTXT2 -4;

        ACT2=false;
      }
    }
  }

  ////CUARTA PAGINA (DIRECTOR Y COMPANÍA) 
  if (CONTADOR > 938 && PAG4eu) {   
    {
      background(0);
      ACT3 = false;
      image(L2, 0, 0, 590, 480);
      image(TER, AUMX, 70, 300, 310);
      image(BER, 80, AUMY1, 130, 120);
      image(JOA, 80, AUMY2, 130, 120);
      image(RIC, 80, AUMY3, 130, 120);


      if (AUX) {
        AUMX = AUMX - 9;
      }

      if (AUY) {
        AUMY1 = AUMY1 - 9;
        AUMY2 = AUMY2 - 9;
        AUMY3 = AUMY3 - 9;
      }

      fill (255);
      textAlign(CENTER);
      textSize(24);
      text("DIRECTOR DE LA PELÍCULA", 460, 43);
      text("GUIONISTAS", 143, 43);



      if (CONTADOR > 978) {
        AUX = false;
        textSize(45);
        fill(255, 217, 0, OPAC);
        text("TERENCE YOUNG", 460, 440);
        if (OPAC < 255) {
          OPAC +=10;
        }
      }
      if (CONTADOR > 986) {
        AUY = false;
      }
      if (CONTADOR > 984) {
        textSize(18);
        fill(255, 217, 0, OPAC2);
        text("BERKELEY MATHER", 143, 193);
        text("JOHANA HARWOOD", 143, 332);
        text("RICHARD MAIBAUM", 143, 472);
        if (OPAC2 < 255) {
          OPAC2 +=10;
        }
      }
    }
  }
  if (CONTADOR > 1400) {
    PAG4eu = false;
    ACT1 = false;
    RifleM0 = false;
  }


  // QUINTA PÁGINA (CAST)
  if (CONTADOR > 1072 && ACT5) {
    background(0);
    fill(255);

    tint(255, OPAC3);
    image(CAST, CASTX, FINALMLINE, 1200, 530);
    CASTX = CASTX - 2;

    image(SEAN, PPL, 70, 200, 290);
    image(W1, PPL + 250, 70, 200, 290);
    image(BERRA, PPL + 500, 70, 200, 290);
    image(MP, PPL + 750, 70, 200, 290);
    image(NO, PPL + 1000, 70, 200, 290);
    PPL = PPL - SPD;

    textSize(20);
    text("SEAN CONNERY -\n(Agente James Bond)", PPL + 50, 43);
    text("URSULA ANDRESS -\n(Honey Ryder)", PPL + 300, 43);
    text("BERNARD LEE -\n('M')", PPL + 550, 43);
    text("LOIS MAXWELL -\n(Miss MoneyPenny)", PPL + 800, 43);
    text("JOSEPH WISEMAN -\n(Dr. Julius No)", PPL + 1050, 43);

    if (OPAC3 < 255) {
      OPAC3 = OPAC3 + 10;
      OPAC3 = constrain(OPAC3, 0, 255);
    }

    noTint();

    if (CONTADOR > 1130) {
      FINALMLINE = FINALMLINE + 2;
      tint(255, OPAC4);
      image(NEGRO, 0, 0, 640, 480);
      if (OPAC4 < 255) {
        OPAC4 = OPAC4 + 1;
      }
      OPAC4 = constrain(OPAC4, 0, 255);

      if (mouseX > 220 && mouseY > 135 && mouseX < 420 && mouseY < 335) {
        tint(255, 0, 0, 100);
      }

      image(BARRIL1, 0, 0, 640, 480);

      textAlign(CENTER);
      textSize(40);
      text("¿REINICIAR LA MISIÓN?", 320, FINALT);

      if (FINTXTM) {
        FINALT = FINALT + 2;
      }

      if (CONTADOR > 1177) {
        FINTXTM = false;
      }
    }
  }
}


void reiniciarRifle() {
  XRifleM1 = 0;
  YRifleM1 = -230;
  XRifleM2 = 1600;
  YRifleM2 = 925;
}
// MOUSE INTERACCIÓN
void mousePressed() {
  if (mouseX > 220 && mouseY > 135 && mouseX < 420 && mouseY < 335 && CONTADOR > 1100) {
    RifleM0 = false;
    ACT1 = true;
    ANX = true;
    ANY = true;
    ACT2 = true;
    ACT3 = true;
    PAG4eu = true;
    AUX = true;
    AUY = true;
    ACT5 = true;
    CONTADOR = 0;
    CONTADOR_ON = true;
    file.stop();
    file.play();
    RifleM0 = true;
    reiniciarRifle();
  }
}
