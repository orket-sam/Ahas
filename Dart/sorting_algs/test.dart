void main() {
  var data = [100, 2, 1, 3, 2, 56, 5, 7];
  bubbleSort(data);
}

List<int> bubbleSort(List<int> data) {
  int range = data.length - 1;
  for (var i = 0; i < range; i++) {
    for (var j = 0; j < range; j++) {
      if (data[j] > data[j + 1]) {
        var temp = data[j];
        data[j] = data[j + 1];
        data[j + 1] = temp;
        print(data);
      }
    }
  }

  return data;
}
