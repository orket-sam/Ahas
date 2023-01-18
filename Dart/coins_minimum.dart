// Find minimum amount of coins needed for change
void main() {
  coinsMinimum(70);
  // print(10 ~/ 3);
}

void coinsMinimum(int amount) {
  List<int> denominations = [1, 2, 5, 10, 20, 50, 100, 500, 1000];
  int max = denominations.length - 1;
  int count = 0;

  while (amount > 0) {
    if (amount >= denominations[max]) {
      if (amount ~/ denominations[max] > 1) {
        count += amount ~/ denominations[max];
        amount -= (amount ~/ denominations[max]) * denominations[max];
      } else {
        count += 1;
        amount -= denominations[max];
      }
    } else if (amount > 0) {
      max -= 1;
    }
  }
  print(count);
}



// Check the floor