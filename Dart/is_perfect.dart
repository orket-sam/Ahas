import 'dart:math';

void main() {
  var a = isPerefct(68);
  print(a);
}

bool isPerefct(int n) {
  // Any number power 1/2 gives the squareroot
  var result = pow(n, 0.5);
  return result == result.roundToDouble();
}
