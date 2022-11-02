void main() => squareSpace(19);

void squareSpace(int n) {
  int count = 0;
  for (var i = 1; i < n; i++) {
    if (i * i < n) {
      count += 1;
    }
  }
  print(count);
}
