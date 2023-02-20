// Find exponent value of power values
// import 'dart:math';

void main() {
  var x = findExponent(59049, 3);
  // var x = log(59049);
  // var y = log(3);
  print(x);
}

bool findExponent(num powerValue, num base) {
  while (powerValue > 1 && powerValue % 3 == 0) {
    powerValue = powerValue / base;

    print(powerValue);
  }

  return powerValue == 1;
}
