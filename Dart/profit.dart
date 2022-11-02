void main() {
  maxProfit(1, [7, 1, 5, 3, 6, 4]);
}

int maxProfit(int x, List<int> stocks) {
  List future = [];
  int profit = 0;
  if (x < stocks.length) {
    for (var i = 0; i < stocks.length; i++) {
      if (x < i) {
        future.add(stocks[i]);
      }
    }
  }
  var max = future[0];
  for (var i = 0; i < future.length; i++) {
    if (future[i] > max) {
      max = future[i];
    }
  }
  //print(future);
  //print(max);
  print(max > stocks[x] ? '${max - stocks[x]}' : 'Loss!');
  return profit;
}
