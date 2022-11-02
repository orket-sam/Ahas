void main() {
  test();
}

void test() {
  for (var i = 0; i < 10; ++i) {
    print('${++i} : ${i++}');
  }
}
