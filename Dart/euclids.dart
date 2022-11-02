void main() {
  var x = 20;
  var y = 18;
  while (x != y && x > 0 && y > 0) {
    print(x);
    print(y);
    if (x > y) {
      x = x - y;
      y = y;
    } else if (y > x) {
      y = y = x;
      x = x;
    }
    print(x);
    print(y);
  }
}
