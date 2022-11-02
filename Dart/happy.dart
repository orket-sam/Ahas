void main() {
  num no = 19;
  while (no != 1) {
    no = happy(no);

    print(no);
  }
}

int happy(num x) {
  var y = x.toString();
  List digits = [];
  for (var i = 0; i < y.length; i++) {
    digits.add(y[i]);
  }

  var j = 0;
  for (var i = 0; i < digits.length; i++) {
    j += (int.parse(digits[i])) * (int.parse(digits[i]));
  }
  return j;
}
