import 'dart:math';

void main() {
  var x = guessNumber(1, 15);
  print(x);
}

int guessNumber(int n, int max) {
  if (n < max) {
    return guessNumber(n + 1, max);
  } else {
    return n;
  }
}
