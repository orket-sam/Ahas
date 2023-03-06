void singleElementSort(List<int> numsArr) {
  for (var i = 0; i < numsArr.length - 1; i++) {
    for (var j = 0; j < numsArr.length - 1; j++) {
      if (numsArr[j + 1] < numsArr[j] && numsArr[j + 1] == 0) {
        var temp = numsArr[j];
        numsArr[j] = numsArr[j + 1];
        numsArr[j + 1] = temp;
      }
    }
  }

  print(numsArr);
}

void singleElementSort2(List<int> numsArr) {
  var originalLength = numsArr.length;
  numsArr.removeWhere((element) => element == 0);
  List elementArray =
      List.generate(originalLength - numsArr.length, (index) => 0);
  print(elementArray + numsArr);
}

void singleElementSort3(List<int> numsArr) {
  var result = [];
  for (var element in numsArr) {
    // if (result.isEmpty) {
    //   result.add(element);
    // } else
    if (element == 0) {
      result.insert(0, element);
    } else {
      result.add(element);
    }
  }
  print(result);
}

void main() {
  var data = [
    100,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    2,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    33,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    4,
    2,
    1,
    0,
  ];
  final stopwatch = new Stopwatch()..start();
  // singleElementSort2(data);
  singleElementSort3(data);
  stopwatch.stop();
  print(stopwatch.elapsed.inMilliseconds);
}
