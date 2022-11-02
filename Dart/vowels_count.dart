void main() {
  countVowels('lorem ipsum');
}

void countVowels(String word) {
  List vowels = ['a', 'e', 'i', 'o', 'u'];
  var count = 0;
  var words = word.split('');
  for (var i in words) {
    if (vowels.any((element) => element == i)) {
      count += 1;
    }
  }
  print(count);
}
