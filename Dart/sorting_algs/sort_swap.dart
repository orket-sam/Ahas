// void swapSort(List<int> data) {
//   List x = [];
//   for (var i = 0; i < data.length; i++) {
//     for (var j = 1; j < data.length; j++) {
//       if (data[j] < data[i]) {
//         var temp;
//         temp = data[i];
//         i = data[j];
//         j = temp;
//         print(data);
//       }
//     }
//       return 0;

//   }
// }

List bubbleSort(List<int> array) {
  int range = array.length - 1;
  for (int i = 0; i < range; i++) {
    for (int j = 0; j < range - i; j++) {
      print('$i : $j');
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

void main() {
  var data = [50, 1, 2, 4, 1, 6, 8, 10];
  var result = bubbleSort(data);
  print(result);
}
