
void main(List<String> arguments) {
  int value;
  int init = 1;
  int max = 5;

  value = init;

  //DO...WHILE loop - use when u want to execute/print before evaluating an expression
  // continue printing from 1 and increasing
  do {
    print(value);
    value++;
  }
  // as long as the number is less than 5
  while (value < max); // 1 2 3 4
  print('Done with do loop');

  // WHILE loop : - Use when U need to evaluate an expression first before printing the first number or executing a block of code
  while (value <= max) {
    print(value);
    value++;
  }
  print('DOne with while loop');

// Control infinite loop with continue and break
  do {
    print('value = $value');
    value++;
    if (value == 3) {
      print('value == 3');
      continue;
    }
    if (value > 5) {
      print('value is greater than 5');
      break;
    }
  } while (true);

  //Infinite loop
  value = init;
  do {
    print('value = $value');
    value++;
  } while (true);
}
