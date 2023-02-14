// Given a sorted array of distinct integers and a target value, return the index
//if the target is found. If not, return the index where it would be if it were inserted in order.

void main() {
  findTarget(3, [
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    51,
  ]);
}

void findTarget(int target, List<int> data) {
  if (data.contains(target)) {
    print(data.indexOf(target));
  } else if (target < data[0] || target == data[0]) {
    data.insert(0, target);
  } else if (target > data[data.length - 1]) {
    data.insert(data.length, target);
  } else {
    for (var i = 0; i < data.length; i++) {
      if (data[i] < target && data[i + 1] >= target) {
        data.insert(i + 1, target);
        break;
      }
    }
  }
  print(data);
}
