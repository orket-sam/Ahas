import 'dart:math';

void main() {
  shuffleStrings(['sam', 'sibasi', 'flutter', 'plane', 'hen']);
}

void shuffleStrings(List<String> words) {
  List shuffled_words = [];

  int length = words.length - 1;
  for (var i = length; i <= 0; i--) {
    var random = Random().nextInt(words.length - 1);
    shuffled_words.add(words[i]);
    words.remove(words[random]);
  }
  print(shuffled_words);
  print(words);
}
