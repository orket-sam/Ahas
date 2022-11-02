String search(int target, List<int> data) {
  String x = '';
  for (var element in data) {
    if (element == target) {
      x = '$target is in index ${data.indexOf(target)}';
      break;
    } else {
      x = '$target does not exist in data';
    }
  }
  return x;
}

void main() {
  List<int> data = [167, 3, 45, 6, 2, 6, 7, 2, 5, 7];

  Stopwatch stopwatch = new Stopwatch()..start();

  var result = search(167, data);
  print('$result executed in ${stopwatch.elapsed.inMicroseconds}');
}
