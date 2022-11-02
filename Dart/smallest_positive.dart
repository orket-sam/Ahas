void main() {
  var result = smallestMissingPositive([1, 2, 3, 5]);
  print(result);
}

int smallestMissingPositive(List<int> data) {
  var length = data.length;
  int x = 1;
  for (var i = 0; i < length - 1; i++) {
    if (!data.contains(x)) {
      break;
    } else {
      x += 1;
    }
  }
  return x == data.length && !data.contains(x) ? x : -1;
}
