void main() {
  printPattern(5);
}

// A function that takes an integer n and prints the pattern n times.
void printPattern(int n) {
  List<String> x = [];
  var max = n - 1;
  for (var j = 0; j <= n - 1; j++) {
    for (var i = n - 1; i >= 0; i--) {
      x.add(i == max ? 'x' : '0');
    }
    print(x.reversed);
    x.clear();
    max -= 1;
  }
}
