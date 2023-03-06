void notDuplicated(List<int> integers) {
  integers.sort();
  int count = 0;
  for (var i = 0; i < integers.length - 1; i++) {
    if (i < integers.length - 2) {
      if (integers[i] == integers[i + 1]) {
        count += 1;
      } else if (integers[i] < integers[i + 1] && count > 0) {
        count = 0;
      } else {
        count = i;
        break;
      }
    } else {
      count = integers.length - 1;
    }
    print(count);
  }
  print(integers[count]);
}

void main() {
  notDuplicated([1, 2, 3, 3, 1, 2, 0]);
}
