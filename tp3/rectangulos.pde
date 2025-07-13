void rectangulos(int rect1, int rect2, int rect3) {
  for (float i=0; i<3; i=i+1) {
    for (float j=0; j<2; j=j+1) {
      for (float k=0; k<2; k=k+1) {
        if ((j+k)%2==0) {
          fill(176, 45, 37);
        } else {
          fill(255, 93, 94);
        }
        if (k>0 && (j+k)%2==0) {
          fill(254, 76, 74);
        } else if (k>0) {
          fill(218, 55, 48);
        }
        rect(430+j*90, 50+k*47.5+i*100, 91, 48.5);
      }
    }
  }

  for (float i=0; i<3; i=i+1) {
    for (float j=0; j<2; j=j+1) {
      for (float k=0; k<2; k=k+1) {

        pushMatrix();
        translate(0, rect1*100);
        if ((j+k)%2==0) {
          fill(255, 101, 53);
        } else {
          fill(255, 146, 79);
        }
        if (k>0 && (j+k)%2==0) {
          fill(253, 133, 72);
        } else if (k>0) {
          fill(251, 110, 54);
        }

        rect(486+j*34, 75+k*23, 34, 23.75);
        popMatrix();

        pushMatrix();
        translate(0, rect2*100);
        if ((j+k)%2==0) {
          fill(83, 63, 62);
        } else {
          fill(137, 117, 119);
        }
        if (k>0 && (j+k)%2==0) {
          fill(137, 97, 98);
        } else if (k>0) {
          fill(85, 73, 73);
        }

        rect(486+j*34, 75+k*23, 34, 23.75);
        popMatrix();

        pushMatrix();
        translate(0, rect3*100);
        if ((j+k)%2==0) {
          fill(13, 111, 158);
        } else {
          fill(103, 173, 199);
        }
        if (k>0 && (j+k)%2==0) {
          fill(74, 156, 193);
        } else if (k>0) {
          fill(31, 122, 166);
        }

        rect(486+j*34, 75+k*23, 34, 23.75);
        popMatrix();
      }
    }
  }
}
