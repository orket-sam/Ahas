void englishToPigLatin(String words) {
  var _words = words.split(' ');
  var result = _words
      .map(((e) =>
          e.split('').join().substring(1) +
          e.split('').join().substring(0, 1) +
          'ay'))
      .toString()
      .replaceAll(",", " ");
  print(result);
}

void main() {
  englishToPigLatin('The quick brown fox jumped over the lazy dog');
}
