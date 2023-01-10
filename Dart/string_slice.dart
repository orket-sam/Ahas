// Example 1 :  fn('JSCodebox', 6) = 'JSCodeJSCodJSCoJSCJSJ'

// Example 2 :  fn('Foobar', 2) = 'FoF'

void main() {
  int n = 6;
  decrementString('FooBar', n);
}

void decrementString(String s, int n) {
  if (n <= s.length) {
    while (n > 0) {
      s = s.substring(0, n);
      print(s);
      n -= 1;
    }
  } else {
    print('Invalid length');
  }
}
