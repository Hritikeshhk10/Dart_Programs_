import 'dart:io';

void main() {
  stdout.write("Enter size of List : ");
  var n = int.parse(stdin.readLineSync());

  List<int> lst = new List(n);

  for (int i = 0; i < lst.length; i++) {
    lst[i] = int.parse(stdin.readLineSync());
  }

  lst.sort((a, b) => a - b);
  Set<int> set = new Set<int>.from(lst);
  stdout.write("Missing Numbers are : ");
  for (int i = set.first; i < set.last; i++) {
    (set.contains(i)) ? '' : stdout.write("$i \t");
  }
}
