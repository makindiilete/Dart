import 'package:for_loops/for_loops.dart';

void main(List<String> arguments) {
  calculate();
  List people = ['Mike', 'Seun', 'Dinma'];

  print(people);

// for loop
  for (var i = 0; i < people.length; i++) {
    print('Person at $i is ${people[i]}');
  }

  // for each loop
  for (String person in people) {
    print(person);
  }

  // Assignment - Use a loop to count to 10. Print each number on the screen. At the 5th loop, print out "half way there".
  int start = 1;
  do {
    print(start);
    if (start == 5) {
      print('Half way there');
    }
    start++;
  } while (start <= 10);
}
