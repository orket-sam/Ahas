abstract class Human {
  void speaks();
  bool hasChildren();
}

class Orket implements Human {
  @override
  bool hasChildren() {
    return false;
  }

  @override
  void speaks() {
    print('salute');
  }
}

void main() {
  var orket = Orket();
  orket.speaks();
}
