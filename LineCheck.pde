boolean LineCheck(int i, int j, int dirX, int dirY) {
  if (i+dirX >= 0 && j+dirY >= 0 && i+dirX < 8 && j+dirY < 8) {
    if ( c[i][j] == c[i+dirX][j+dirY]) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}
