void checkBrackets(String s) {
  List open_list = ["[", "{", "("];
  List close_list = ["]", "}", ")"];
  List characters = s.split('');
  List stack = [];
  var position;
  for (var character in characters) {
    if (open_list.contains(character)) {
      stack.add(character);
    } else if (close_list.contains(character)) {
      position = characters.indexOf(character);
      open_list[position] == (stack.length - 1) && stack.length > 0
          ? stack.removeLast()
          : 'unbalancedd';
    }
  }
  if (stack.length == 0) {
    print('Balanced');
  } else {
    print('Unbalanced');
    print(stack.length);
  }
}

void main() {
  checkBrackets('{{{}}}}}');
}
