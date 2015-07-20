class Tile {
  Tile() {
  }
  void put() {
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
         if (c[i][j] == 0) {
      stroke(200, 0, 0, 200);
      fill(200, 0, 0, 180);
    } else if (c[i][j] == 1) {
      stroke(0, 200, 0, 200);
      fill(0, 200, 0, 180);
    } else if (c[i][j] == 2) {
      stroke(0, 0, 200, 200);
      fill(0, 0, 200, 180);
    } else {
      stroke(200, 200, 0, 200);
      fill(200, 255, 0, 180);
    }
        strokeWeight(5);
        rect(i*SIZE+5*(i+1)+3, j*SIZE+5*(j+1)+3, SIZE-5, SIZE-5);
      }
    }
  }
  void scale_up(int i, int j) {
    fill(255);
    rect(i*SIZE+5*(i+1)+0.5, j*SIZE+5*(j+1)+0.5, SIZE, SIZE);
     if (c[i][j] == 0) {
      stroke(200, 0, 0, 200);
      fill(200, 0, 0, 180);
    } else if (c[i][j] == 1) {
      stroke(0, 200, 0, 200);
      fill(0, 200, 0, 180);
    } else if (c[i][j] == 2) {
      stroke(0, 0, 200, 200);
      fill(0, 0, 200, 180);
    } else {
      stroke(200, 200, 0, 200);
      fill(200, 255, 0, 180);
    }
    //if (dist(mouseX, mouseY, (i*SIZE+5*(i+1)+SIZE/2-2), (j*SIZE+5*(j+1)+SIZE/2-2))<(SIZE-5)/2) {
    if (mouseX>(i*SIZE+5*(i+1)+SIZE/2-2)-(SIZE-5)/2 && mouseY >(j*SIZE+5*(j+1)+SIZE/2-2)-(SIZE-5)/2 && mouseX < (i*SIZE+5*(i+1)+SIZE/2-2)+(SIZE-5)/2 && mouseY < (j*SIZE+5*(j+1)+SIZE/2-2)+(SIZE-5)/2)
      strokeWeight(5);
    rect(i*SIZE+5*(i+1)+0.5, j*SIZE+5*(j+1)+0.5, SIZE, SIZE);
  }

  void highlight(int i, int j) {
    if (c[i][j] == 0) {
      stroke(200, 0, 0, 200);
      fill(200, 0, 0, 180);
    } else if (c[i][j] == 1) {
      stroke(0, 200, 0, 200);
      fill(0, 200, 0, 180);
    } else if (c[i][j] == 2) {
      stroke(0, 0, 200, 200);
      fill(0, 0, 200, 180);
    } else {
      stroke(200, 200, 0, 200);
      fill(200, 255, 0, 180);
    }
    strokeWeight(5);
    rect(i*SIZE+5*(i+1)+3, j*SIZE+5*(j+1)+3, SIZE-5, SIZE-5);
  }
  void line(int i, int j, int s, int t) {
    stroke(0, 0, 0, 100);
    fill(0, 0, 0, 100);
    line(i*SIZE+5*(i+1)+SIZE/2-2, j*SIZE+5*(j+1)+SIZE/2-2, s*SIZE+5*(s+1)+SIZE/2-2, t*SIZE+5*(t+1)+SIZE/2-2);
  }
}

