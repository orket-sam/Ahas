// int binarySearch(List<int> data, int target, int low, int high) {
//   int mid = findMid(data);
//   int low = 0;
//   int high = data.length - 1;
//   while (low < high) {
//     if (data[mid] == target) {
//       return mid;
//     } else if (data[mid] > target) {
//       high = mid - 1;
//     } else {
//       low = mid + 1;
//     }
//     print(object)
//   }
//   return -1;
// }

// // Function to find array mid value
// int findMid(List data) {
//   int mid;
//   if (data.length & 1 == 1) {
//     mid = (data.length + 1) ~/ 2;
//   } else {
//     mid = (data.length) ~/ 2;
//   }
//   return mid;
// }

// void main() {
//   var data = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   var index = binarySearch(data, 5, 0, data.length);
//   print(index);
// }
