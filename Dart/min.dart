void main() {
  findDuplicates('characters', 'alphabets');
}

void findDuplicates(String a, String b) {
  Set x = {};
  Set y = {};
  x.addAll(a.split(''));
  y.addAll(b.split(''));
  var difference = x.difference(y).toString() + y.difference(x).toString();
  print(difference.toString());
}
