import 'dart:io';

int calculate() {
  return 6 * 7;
}

void displayUserFullName(){
  stdout.write('What is your first name?\r\n');
  String? firstName = stdin.readLineSync();

  stdout.write('What is your last name?\r\n');
  String? lastName = stdin.readLineSync();

  print('Hello $firstName $lastName');
}
