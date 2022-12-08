import 'dart:io';

void main() {
  List<int> scores = [];

  while (true) {
    nextScore(scores);
  }
}

void nextScore(List<int> scores) {
  print('Enter the score');
  String? ops = stdin.readLineSync();

  int sum = 0;
  if (int.tryParse(ops!) != null) {
    scores.add(int.parse(ops));
  } else if (scores.isNotEmpty) {
    switch (ops) {
      case 'C':
        scores.removeAt(scores.length - 1);
        break;
      case 'D':
        scores.add((scores[scores.length - 1] * 2));
        break;
      case '+':
        scores.add((scores[scores.length - 1]) + (scores[scores.length - 2]));

        break;
      default:
        {
          print('Invalid input');
        }
    }
  }

  scores.forEach(
    (element) => sum += element,
  );

  print(scores);
  print('Totals score is now: $sum');
}
