import 'dart:collection';

void main() {
  final stopwatch = Stopwatch()..start();
  var hashMap = HashMap();

  hashMap[0] = 'dark necessities';
  hashMap[3] = 'dark';
  hashMap[2] = 'okay';
  print(hashMap[3]);
  print(stopwatch.elapsed);
}
