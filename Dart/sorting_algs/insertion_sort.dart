void main() {
  insertionSort([1, 0, 2, 10, 101, 0]);
}

void insertionSort(List<int> data) {
  for (var i = 0; i <= data.length - 1; i++) {
    for (var j = 0; j < data.length - 1 - i; j++) {
      if (data[j] > data[j + 1]) {
        var x = data[j];
        data[j] = data[j + 1];
        data[j + 1] = x;
      }
    }
    print(data);
  }
}
