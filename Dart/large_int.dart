void main() {
  largeInt([9, 9, 9, 9, 9]);
}

void largeInt(List<int> data) {
  var emptyString = '';
  data.forEach(
    (element) => emptyString += element.toString(),
  );

  var result = int.tryParse(emptyString)! + 1;
  var resultString = result.toString();

  print(resultString.split(''));
}
