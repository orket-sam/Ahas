void main() {
  print(19.toRadixString(2));
}

int getMaximumBinaryGap(int n) {
  var binaryN = n.toRadixString(2);
  if (!binaryN.contains('0')) {
    return -1;
  } else {
    List<String> binaryList = binaryN.split('');
    for (var i = 0; i <= binaryList.length - 1; i++) {}
    return 0;
  }
}
