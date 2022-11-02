void main() {
  num no = 21;
  print(no);
  while (no != 1) {
    no = collartz(no);
    print(no);
  }
}

num collartz(num no) {
  if (no % 2 == 0) {
    return no / 2;
  } else {
    return 3 * no + 1;
  }
}
