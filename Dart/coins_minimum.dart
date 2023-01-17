// Find minimum amount of coins needed for change
void main() {
  coinsMinimum(10000);
}

void coinsMinimum(int amount) {
  List<int> denominations = [1, 2, 5, 10, 20, 50, 100, 500, 1000];
  int max = denominations.length - 1;
  int count = 0;

  while (amount > 0) {
    if (amount >= denominations[max]) {
      count += 1;

      amount -= denominations[max];
    } else if (amount > 0) {
      max -= 1;
    } else {
      break;
    }
  }
  print(count);
}
