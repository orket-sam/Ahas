int collartz(int x) {
  if (x % 2 == 0) {
    x = x ~/ 2;
  } else {
    x = ((x + 1) ~/ 2);
  }
  return x;
}

void main() {
  int y = 1450;
  while (y != 1) {
    y = collartz(y);
    print(y);
  }
}
