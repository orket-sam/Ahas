void main() {
  integerToBinary(0);
}

void integerToBinary(int n) {
  String result = '';
  while (n >= 1) {
    result = (n % 2).toString() + result;
    n = n ~/ 2;
  }
  var x = result;
  print(x);
}

// void integerToBinary(num n) {
//   List result = [];
//   while (n != 1) {
//     result.add((n * 2).floor());

//     n = n * 2;
//     print(n);

//     break;
//   }
//   print(result);
// }
