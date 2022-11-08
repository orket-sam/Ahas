void prefixArray(List<int> arr) {
  List<int> prefArr = [];
  for (var i = 0; i < arr.length; i++) {
    if (prefArr.isEmpty) {
      prefArr.add(arr[0]);
    } else {
      prefArr.add(prefArr[i - 1] + arr[i]);
    }
  }
  print(prefArr);
}

void main() {
  prefixArray([10, 20, 10, 5, 15]);
}
