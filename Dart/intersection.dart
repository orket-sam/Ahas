void main() {
  var strArray = [
    [
      1,
    ],
    [0, 1, 2, 3, 4, 5]
  ];
  findintersection(strArray);
}

void findintersection(List<List> strArr) {
  List x = strArr[0].length < strArr[1].length ? strArr[0] : strArr[1];
  for (var i = 0; i < x.length; strArr[0], i++) {
    if (strArr[0][i] == strArr[1][i]) {
      print(i);
    } else {
      print('no intersection');
    }
  }
}
