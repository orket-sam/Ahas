void main() {
  reverseMap({'sam': 'orket'});
}

void reverseMap(Map data) {
  var x = data.keys.toList();
  var y = data.values.toList();
  Map newMap = {};
  for (var i = 0; i < x.length; i++) {
    newMap[y[i]] = x[i];
  }
  print(newMap);
}
