import 'package:the_this_keyword/dog.dart';
import 'package:the_this_keyword/employee.dart';
import 'package:the_this_keyword/the_this_keyword.dart' as the_this_keyword;

void main(List<String> arguments) {
  Dog lucy = Dog(7, 'Lucy');
  print('Name = ${lucy.name}');
  print('Age = ${lucy.age}');
  print('${lucy.name} is ${lucy.ageInDogYears()} years old');

  // Assignment
  /* 
  Create an employee class. This class should have two strings, "name" and "position". Set those strings in the constructor. Then make a function that prints out the employee's name and position.
   */

  Employee dev = Employee('Michael', 'Frontend Teamlead');
  dev.handlePrintEmployeeDetails();
}
