void main() {
  findMode([1, 2, 2, 3, 3]);
}

void findMode(List<int> numbers) {
  var numberMap = {};
  for (var element in numbers) {
    if (numberMap[element] == null) {
      numberMap[element] = 1;
    } else {
      numberMap[element] += 1;
    }
  }
}
