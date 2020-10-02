import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  var n = int.parse(stdin.readLineSync());

  List<int> lst = new List(n);

  for (int i = 0; i < n; i++) {
    lst[i] = int.parse(stdin.readLineSync());
  }
  stdout.write("Leaders Are : ");
  int maxValue = lst[n - 1];
  for (int i = (lst.length - 1); i >= 0; i--) {
    if (lst[i] >= maxValue) {
      stdout.write("${maxValue = lst[i]} \t");
    }
  }
}
