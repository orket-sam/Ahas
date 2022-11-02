import 'dart:math';

void main() {
  var n = 100;
  var result = sumSquares(n);
  print(result);
}

int sumSquares(int n) {
  var sum_of_squares = (n * (n + 1) * (2 * n + 1)) / 6;
  var sum_squared = pow((n * n + n) / 2, 2);
  return (sum_squared - sum_of_squares).toInt();
}
