void main() {
  String a = 'foo';
  String b = 'bar';
  a = a + b;
  b = a.substring(0, a.length - b.length);
  a = a.substring(b.length);
  print('a is $a');
  print('b is $b');
}
