// Leetcode trap rainwater problem

void main() {
  trappedWater([4, 2, 0, 3, 2, 5]);
}

// [0,1,0,2,1,0,1,3,2,1,2,1]

// [4,2,0,3,2,5]

void trappedWater(List<int> bars) {
  var max_left = 0;
  var max_right = 0;
  var left = [];
  var right = [];
  for (var i = 0; i < bars.length; i++) {
    int reverseIndex = bars.length - 1 - i;
    if (i > 0) {
      if (bars[i - 1] > max_left) {
        max_left = bars[i - 1];
        left.add(max_left);
      } else {
        left.add(max_left);
      }
      if (bars[reverseIndex + 1] > max_right) {
        max_right = bars[reverseIndex + 1];
        right.add(max_right);
      } else {
        right.add(max_right);
      }
    } else {
      left.add(0);
      right.add(0);
    }
  }
  right = right.reversed.toList();
  var minVal = [];
  for (var i = 0; i < right.length; i++) {
    if (left[i] <= right[i]) {
      minVal.add(left[i]);
    } else {
      minVal.add(right[i]);
    }
  }

  var count = 0.0;
  for (var i = 0; i < bars.length; i++) {
    if (minVal[i] - bars[i] > 0) {
      count += minVal[i] - bars[i];
    }
  }
  print(count);
}
