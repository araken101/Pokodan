boolean Check(int i, int j, int s, int t) {
  if (i >= 0 && j >= 0 && i < 8 && j < 8) {
    if (c[s][t] == c[i][j]) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

