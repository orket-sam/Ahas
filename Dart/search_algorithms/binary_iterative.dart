int binarySearch(int low, int high, List<int> data, int target) {
  while (low < high) {
    var mid = low + (high - low) ~/ 2;
    if (data[mid] == target) {
      return mid;
    } else if (data[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  var target = 3;
  var data = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  Stopwatch stopwatch = new Stopwatch()..start();

  var result = binarySearch(0, data.length - 1, data, target);
  print(
      'Target is in index: $result executed in ${stopwatch.elapsed.inMicroseconds}');
}
