void main() {
  frequentChar('haaha');
}

void frequentChar(String word) {
  List wordList = [];
  for (var i = 0; i < word.length; i++) {
    wordList.add(word[i]);
  }
  Map wordMap = {};
  for (var character in wordList) {
    if (wordMap.containsKey(character)) {
      wordMap[character] += 1;
    } else {
      wordMap[character] = 1;
    }
  }
  int count = 0;
  var key;
  wordMap.forEach((k, v) {
    if (v > count) {
      count = v;
      key = k;
    }
  });
  print(key);
}
