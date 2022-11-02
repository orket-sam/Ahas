void perfectNum(int n) {
  List<int> x = [];
  for (var i = 1; i < n; i++) {
    if (n % i == 0) {
      x.add(i);
    }
  }
  var sum = 0;
  for (var element in x) {
    sum += element;
  }
  if (sum == n) {
    print('perfecto');
  } else if (x.contains((sum - n) / 2)) {
    print('admirable: ${(sum - n) / 2}');
  } else {
    print('nope');
  }
}

void main() {
  perfectNum(3);
}
