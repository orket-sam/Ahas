// Input: names = ["Mary","John","Emma"], heights = [180,165,170]
// Output: ["Mary","Emma","John"]
// Explanation: Mary is the tallest, followed by Emma and John.

void main() {
  sortLists(['Mary', 'John', 'Emma'], [180, 165, 170]);
}

void sortLists(List<String> names, List<double> heights) {
  Map<double, String> data = {};

  for (var i = 0; i < names.length; i++) {
    data[heights[i]] = names[i];
  }
  data = Map.fromEntries(
      data.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  print(data.values.toList().reversed);
}
