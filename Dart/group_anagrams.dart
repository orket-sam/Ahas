void groupAnagrams(List<String> words) {
  Map<String, List<String>> anagrams = {};
  for (var word in words) {
    var element = word.split('');
    element.sort();
    var sortedWord = element.join();
    if (anagrams.containsKey(sortedWord)) {
      anagrams[sortedWord]!.add(word);
    } else {
      anagrams[sortedWord] = [word];
    }
  }
  print(anagrams.values);
}

void main() {
  groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]);
}
