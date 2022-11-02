void main() {
  findPrimeNumber(30);
}

void findPrimeNumber(int n) {
  List primeNumbers = [];
  var start = 2;
  while (primeNumbers.length <= n) {
    if (checkPrime(start)) {
      primeNumbers.add(start);
    }
    start += 1;
  }
  print(primeNumbers[n]);
  print(primeNumbers);
}

bool checkPrime(int x) {
  bool check = true;
  for (var i = 2; i < x; i++) {
    if (x % i == 0) {
      check = false;
      break;
    }
  }
  return check;
}
