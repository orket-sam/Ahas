void main() {
  lastWord('Sam is a wise human');
}

void lastWord(String s) {
  List word = [];

  for (var i = 0; i < s.length; i++) {
    int reverse = s.length - 1 - i;

    if (s[reverse] == ' ') {
      break;
    }
    word.add(s[reverse]);
  }
  var newWord = new List.from(word.reversed);
  print(newWord.length);
}
