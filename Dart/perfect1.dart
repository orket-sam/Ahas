void main() {
  print(checkPerfectNumber(28));
}

bool checkPerfectNumber(int x) {
  var sum = 0;
  for (var i = 1; i < x; i++) {
    if (x % i == 0) {
      sum += i;
    }
  }

  return sum == x;
}
