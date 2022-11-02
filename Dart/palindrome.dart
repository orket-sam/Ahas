void main() {
  var x = palindromeCheck('reviver');
  print(x);
}

bool palindromeCheck(String word) {
  bool x = false;
  for (var i = 0; i <= word.length - 1; i++) {
    int reverseIndex = word.length - 1 - i;
    x = word[i] == word[reverseIndex];
  }
  return x;
}
