void main() {
  checkPrime(2);
}

void checkPrime(int x) {
  bool check = true;
  for (var i = 2; i < x; i++) {
    if (x % i == 0) {
      check = false;
      break;
    }
  }

  if (check) {
    print('$x is a prime number');
  } else {
    print('$x is not a prime number');
  }
}
