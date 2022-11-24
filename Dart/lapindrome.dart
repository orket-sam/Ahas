void main() {
  var result = lapindromeChecker('abbaab');
  print(result);
}

bool lapindromeChecker(String words) {
  String x = words.substring(0, words.length ~/ 2);

  String y;
  if (words.length % 2 == 0) {
    y = words.substring(words.length ~/ 2, words.length);
  } else {
    y = words.substring((words.length ~/ 2) + 1, words.length);
  }
  List yList = y.split('');
  for (var i in x.split('')) {
    if (y.split('').contains(i)) {
      yList.remove(i);
    } else {
      break;
    }
  }
  return yList.isEmpty;
}
