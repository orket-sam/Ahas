void main() {
  checkSubstring('sammy');
}

void checkSubstring(String s) {
  List chars = s.split('');
  List lengths = [];
  var i = 0;
  for (var j = 0; j < chars.length - 1; j++) {
    for (i; i < chars.length - 1; i++) {
      if (!lengths.contains(chars[j])) {
        lengths.add(chars[j]);
      } else {
        i = lengths.length;
      }
    }
  }
  print(lengths);
}
