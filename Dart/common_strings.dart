void main() {
  var result = commonLeastIndex([
    "Shogun",
    "Tapioca Express",
    "Burger King",
    "KFC"
  ], [
    "Piatti",
    "The Grill at Torrey Pines",
    "Hungry Hunter Steakhouse",
    "Shogun"
  ]);
  print(result);
}

List<String> commonLeastIndex(List<String> data1, List<String> data2) {
  int? indexSum;
  List<String> words = [];
  for (var i = 0; i < data1.length; i++) {
    for (var j = 0; j < data2.length; j++) {
      if (data1[i] == data2[j]) {
        int currentSum = i + j;

        if (indexSum == null) {
          indexSum = currentSum;
          words.add(data1[i]);
        } else if (currentSum <= indexSum) {
          indexSum = currentSum;
          words.add(data1[i]);
        }
      }
    }
  }
  return words;
}
