abstract class Human {
  final int age;
  int adult = 18;
  Human([this.age = 0]);

  bool isAdult();
}

class Orket extends Human {
  Orket([int age = 0]) : super(age);
  @override
  bool isAdult() {
    return age >= adult;
  }
}

void main() {
  Human sam = new Orket();

  print(sam.age);
}
