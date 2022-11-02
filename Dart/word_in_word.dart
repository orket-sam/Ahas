void main() {
  checkWordInWord('There is a palm tree on the island');
}

void checkWordInWord(String s) {
  var words = s.split(' ');
  for (var i = 0; i < words.length; i++) {
    for (var j = 0; j < words.length; j++) {
      if (words[j].contains(words[i]) && words[j] != words[i]) {
        print('The word ${words[i]} appears in ${words[j]}');
      }
    }
  }
}
