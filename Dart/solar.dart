import 'dart:math';

void main() {
  biggestSquares(37);
}

List<int> biggestSquares(int area) {
  List<int> squares = [];

  while (area > 0) {
    var maximum_square = pow(area, 0.5).toInt();
    var maximum_area = pow(maximum_square, 2).toInt();
    area -= maximum_area;
    squares.add(maximum_square);
    print(squares);
  }
  return squares;
}
