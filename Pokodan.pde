int SIZE = 50;
int c [][];
int traces[][];
int count = 0;
int mode = 0;
Tile t1;
void setup() {
  size(SIZE*8+48, SIZE*8+48);
  c = new int [8][8];
  traces = new int [8][8];
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      c[i][j] = int(random(4));
    }
  }
  t1 = new Tile();
}
void draw() {
  background(255);
  t1.put();
  int x = mouseX/(width/8);
  int y = mouseY/(height/8);
  if (mousePressed) {
    println(c[x][y]);
    t1.scale_up(x, y);
    for (int s = 0; s<8; s++) {
      for (int t = 0; t < 8; t++) {
        if (Check(x, y, s, t)) {
          count++;
          t1.highlight(s, t);
        }
      }
    }
  }
}

