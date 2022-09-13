
import 'dart:io';

import 'package:user_input/user_input.dart';

void main(List<String> arguments) {
// ds program ask a user his name
// reads d name entered by d user and display it
stdout.write('What is your name \r\n');
String? name = stdin.readLineSync();
// print(name);

  //if name is not null but its empty, we display error else we display the name with hello
name != null && name.isEmpty ? stderr.write("Name is empty") : stdout.write('Hello $name\r\n');


// Assignment
  /*Ask the user for their first name, and store their input in a variable.
  Then ask the user for their last name and store that in a variable. Finally display the full name to the user.*/

displayUserFullName();
}
