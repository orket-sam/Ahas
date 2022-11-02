void main() {
  var result = frogJump(10, 805, 30);
  print(result);
}

int frogJump(num x, num y, num d) {
  int count = 1;
  var leap = x + d;
  while (leap < y) {
    count += 1;
    leap += d;
  }
  return count;
}
