int SIZE = 50;
int c [][];
int traces[][];
int count = 0;
int mode = 0;
int latest_x = 0;
int latest_y = 0;
int second_x = 0;
int second_y = 0;
int testX = 0;
int testY = 0;
int flag = 0;
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
  if (flag == 1) {
    if (x != latest_x || y != latest_y) {
      count++;
    }
  }
  if (mousePressed) {
    if (count == 1) {
      testX = x;
      testY = y;
    }
    //latest_x = x;
    //latest_y = y;
    for (int s = 0; s<8; s++) {
      for (int t = 0; t < 8; t++) {
        if (Check(x, y, s, t)) {
          t1.scale_up(x, y);
          t1.highlight(s, t);
          for (int i = -1; i <= 1; i++) {
            for (int j = -1; j <= 1; j++) {
              if (LineCheck(s, t, i, j)) {
                //t1.line(s, t, s+1, t+1);
                stroke(255, 255, 255, 180);
                fill(0, 0, 0, 100);
                if (count == 1) {
                  line(testX*SIZE+5*(testX+1)+SIZE/2-2, testY*SIZE+5*(testY+1)+SIZE/2-2, (latest_x)*SIZE+5*(latest_x+1)+SIZE/2-2, (latest_y)*SIZE+5*(latest_y+1)+SIZE/2-2);
                }
                if (count != 1 && count != 0) {
                  for (int w = 0; w < count; w++) {
                    //line(x*SIZE+5*(x+1)+SIZE/2-2, y*SIZE+5*(y+1)+SIZE/2-2, (second_x)*SIZE+5*(second_x+1)+SIZE/2-2, (second_y)*SIZE+5*(second_y+1)+SIZE/2-2);
                  }
                }
                //println(x+","+y+","+latest_x+","+latest_y);
              }
            }
          }
        }
      }
    }
    /*for (int s = -1; s <= 1; s++) {
     for (int t = -1; t <= 1; t++) {
     if (LineCheck(x, y, s, t)) {
     latest_x = x;
     latest_y = y;
     println
     }
     }
     }
     */
    //t1.line(x,y,latest_x,latest_y);
    /*for(int i = -1; i <= 1; i++){
     for(int j = -1; j <=1; j++){
     if(LineCheck(x, y, i, j)){
     latest_x = x;
     latest_y = y;
     }
     }
     }
     t1.line(x,y,latest_x,latest_y);
     */
  }
  second_x = x;
  second_y = y;
  println(latest_x,latest_y);
}
void mousePressed() {
  int x = mouseX/(width/8);
  int y = mouseY/(height/8);
  flag = 1;
  if (flag == 1) {
    latest_x = x;
    latest_y = y;
    //flag = 0;
  }
}

