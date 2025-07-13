//https://youtu.be/y8SYEHP3ePo

PImage opart;
boolean clickCA=false;//click Circulo Amarillo
float clickCR=0;//click Circulo Rojo
color CR=color(216, 36, 36);//Circulo ROjo
int cambioC1=0, cambioC2=1, cambioC3=2;//cambio color 1 2 3...

void setup() {
  size(800, 400);
  opart= loadImage("opart tp3.jpeg");
  opart.resize(400, 400);
}

void draw() {
  background(0, 165, 193);
  image(opart, 0, 0);
  noStroke();

  CirculoAmarillo();
  bordes();
  CirculoRojo();
  rectangulos(cambioC1, cambioC2, cambioC3);
  fill(0);
}

void mousePressed() {

  if (Boton(621, 50, 771, 202)) {
    clickCA=!clickCA;   
  }
  if (dist(mouseX, mouseY, 695, 280)<100/2) {
    clickCR++;
    if (clickCR==1) {
      CR=color(36, 216, 36);
    }
    if (clickCR==2) {
      CR=color(36, 36, 216);
    }
    if (clickCR==3) {
      CR=color(216, 36, 36);
      clickCR=0;
    }
  }
  if (mouseX<=400) {
    clickCA=false;
    clickCR=0;
    CR=color(216, 36, 36);
    cambioC1=0;
    cambioC2=1;
    cambioC3=2;
  }
}
void keyPressed() {
  if (key=='w') {
    cambioC1--;
    cambioC2--;
    cambioC3--;
    if (cambioC1==-1) {
      cambioC1=2;
    }
    if (cambioC2==-1) {
      cambioC2=2;
    }
    if (cambioC3==-1) {
      cambioC3=2;
    }
  }
  if (key=='s') {
    cambioC1++;
    cambioC2++;
    cambioC3++;
    if (cambioC1==3) {
      cambioC1=0;
    }
    if (cambioC2==3) {
      cambioC2=0;
    }
    if (cambioC3==3) {
      cambioC3=0;
    }
  }
}
