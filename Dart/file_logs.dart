import 'dart:math';

void main() {
  var result = minOperations(["d1/", "d2/", "./", "d3/", "../", "d31/"]);
  print('Operations required: $result');
}

int minOperations(List<String> logs) {
  int count = 0;
  for (var operation in logs) {
    if (operation == '../') {
      count = max(0, count - 1);
    } else if (operation != './') {
      count += 1;
    }
  }
  return count;
}
