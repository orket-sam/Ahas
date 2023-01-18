void main() {
  denominationsChange(737);
}

void denominationsChange(int amount) {
  int count = 0;
  List<int> denominations = [1000, 500, 100, 50, 20, 10, 5, 2, 1];
  for (var coin in denominations) {
    if ((amount / coin).floor() > 0) {
      count += (amount / coin).floor();
      amount -= coin * (amount / coin).floor();
    }
  }
  print(count);
}
