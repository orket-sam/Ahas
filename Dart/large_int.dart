// Input: digits = [1,2,3]
// Output: [1,2,4]
// Explanation: The array represents the integer 123.
// Incrementing by one gives 123 + 1 = 124.

void main() {
  var data = {'orket': 'sam'};
  print(data.keys.toList()[0]);
  // largeInt([9, 9, 9, 9, 9]);
}

void largeInt(List<int> data) {
  int dataInt = int.parse(data.join());
  data = (dataInt + 1).toString().split('').map((e) => int.parse(e)).toList();
  print(data);
}
