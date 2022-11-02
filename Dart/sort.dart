void main() {
  var data = [2, 3, 4, 5, 6, 7, 8, 9, 10];
  var result = binarySearch(data, 0, data.length - 1, 7);
  print(result);
}

int binarySearch(List<int> data, int low, int max, int target) {
  while (low < max) {
    var mid = low + (max - low) ~/ 2;
    if (data[mid] == target) {
      return data[mid];
    } else if (data[mid] > target) {
      max = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
