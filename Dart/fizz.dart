void main() {
  aMilli();
}

void fizzBuzz() {
  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print('FizzBuzz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else {
      print(i);
    }
  }
}

void aMilli() {
  for (var i = 1; i <= 1000000000; i++) {
    print(i);
  }
}
