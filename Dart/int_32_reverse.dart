import 'dart:math';

void main() {
  var reversedInt = reverseInt(12812);
  print(reversedInt);
}

// Function that reverses a 32-bit integer
int reverseInt(int x) {
  // Maximum int in 32-bit signed integers

  var max = pow(2, 31) - 1;

  //Minimum integer in 32-bit signed integers

  var min = pow(2, 31) * -1;
  if (x >= min && x <= max) {
    int result;
    if (x < 0) {
      result =
          int.parse((x * -1).toString().split('').reversed.toList().join());
      return result;
    } else {
      result = int.parse(x.toString().split('').reversed.toList().join());
    }
    return result;
  }

  return 0;
}
