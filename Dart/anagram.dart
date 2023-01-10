void main() {
  var x = anagramChecker('below', 'elbow');
  print(x);
}

bool anagramChecker(String s, String t) {
  List a = s.replaceAll(' ', '').split('');
  List b = t.replaceAll(' ', '').split('');

  print(s.replaceAll(' ', ''));
  print(t.replaceAll(' ', ''));
  if (a.length == b.length) {
    for (var element in b) {
      if (a.contains(element)) {
        a.remove(element);
      }
    }
  }
  return a.isEmpty;
}
