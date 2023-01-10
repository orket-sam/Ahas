void main() {
  var output = combinations('11');
  print(output);
}

List<String>? combinations(String s) {
  var dictionary = {
    2: ['a', 'b', 'c'],
    3: ['d', 'e', 'f'],
    4: ['g', 'h', 'i'],
    5: ['j', 'k', 'l'],
    6: ['m', 'n', 'o'],
    7: ['p', 'q', 'r', 's'],
    8: ['t', 'u', 'v'],
    9: ['w', 'x', 'y', 'z'],
  };

  if (s.isEmpty || s.length > 2) {
    return [];
  } else if (s.length == 1) {
    return dictionary[int.parse(s)];
  } else {
    int x = int.parse(s.split('')[0]);
    int y = int.parse(s.split('')[1]);

    var a = dictionary[x];
    var b = dictionary[y];
    List<String> result = [];
    for (var i = 0; i < a!.length; i++) {
      for (var j = 0; j < b!.length; j++) {
        result.add('${a[i]}${b[j]}');
      }
    }
    return result;
  }
}
