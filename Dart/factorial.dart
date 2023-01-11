void main() {
  var x = mystery(10);
  print(x);
}

int fact(int n) {
  if (n >= 1) {
    return n * fact(n - 1);
  } else {
    return 1;
  }
}

// Recursion decrement integer
int mystery(int n) {
  if (n > 0) {
    print(n);
    return mystery(n - 1);
  } else {
    return 0;
  }
}
