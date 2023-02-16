import 'dart:math';

void main() {
  findMaxProduct([-11, 23, 13, 45, 21, -7]);
}

// Calculate maximum product from 3 elements of a list
void findMaxProduct(List<int> elements) {
  elements.sort();
  var maxLen = elements.length - 1;
  var negativeProduct = elements[0] * elements[1] * elements[maxLen];
  var positiveProduct =
      elements[maxLen - 2] * elements[maxLen - 1] * elements[maxLen];
  print(elements);
  print(max(negativeProduct, positiveProduct));
}
