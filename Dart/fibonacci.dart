void main() {
  print(fibonacci(10));
}

int fibonacci(int n) {
  if (n < 2) {
    return n;
  } else {
    print(fibonacci(n - 1) + fibonacci(n - 2));
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
