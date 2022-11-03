abstract class Shape {
  int dimension1, dimension2;

  Shape(this.dimension1, this.dimension2);

  void area();
  void perimeter(String name) {
    print('The perimeter of this $name is ${2 * (dimension1 + dimension2)}');
  }
}

class Square extends Shape {
  Square(int length) : super(length, length);
  @override
  void area() {
    print('The area of this square is ${dimension1 * dimension2}');
  }
}

class Rectangle implements Shape {
  Rectangle(this.dimension1, this.dimension2);
  @override
  void area() {
    print(
        'The perimeter of this rectangle is ${(2 * dimension1 + dimension2)}');
  }

  @override
  void perimeter(String name) {
    print('The area of this $name is ${dimension1 * dimension2}');
  }

  @override
  int dimension1;

  @override
  int dimension2;
}

void main() {
  var mySquare1 = Square(24);
  var myRectangle = Rectangle(10, 20);

  mySquare1.area();
  mySquare1.perimeter('square');
  myRectangle.area();
  myRectangle.perimeter('Rectangle');
}
