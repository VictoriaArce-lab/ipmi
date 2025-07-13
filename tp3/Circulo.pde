void CirculoRojo() {
  fill(17);
  rect(621, 212, 150, 133);

  fill(CR);
  circle(695, 280, 100);
}



void CirculoAmarillo() {
  fill(234);
  rect(621, 50, 150, 152);
  for (int i=0; i<3; i=i+1) {
    for (int j=0; j<3; j=j+1) {
      pushMatrix();
      rectMode(CENTER);
      fill(240, 222, 2);
      if (!clickCA) {
        translate(645+i*52, 75+j*52);
        circle(0, 0, 52);
      }
      if (clickCA) {
        translate(646+i*50, 76+j*50);
        rotate(0.80);
        rect(0, 0, 40, 40, 10);
      }

      rectMode(CORNER);
      popMatrix();
    }
  }
}
boolean Boton(float x, float y, float ancho, float alto) {
  return mouseX > x && mouseX < ancho &&
    mouseY > y && mouseY < alto;
}
