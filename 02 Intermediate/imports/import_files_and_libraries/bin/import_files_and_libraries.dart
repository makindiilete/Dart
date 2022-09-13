// Here our import starts with 'package' which means what we are importing here is a file(component in React terms)
import 'dart:convert';

import 'package:import_files_and_libraries/import_files_and_libraries.dart'
    as mycode;
//Importing a dart package => as a string u start with 'dart' then semi-colon and then d name of d package U want to install

void main(List<String> arguments) {
  mycode.sayHello();

  // Using dart convert package to encode a text
  var myValue = 'Hello World';
  // utf8.encode comes from 'dart:convert' lib
  var ebytes = utf8.encode(myValue);
  var encoded = base64.encode(ebytes);
  print(
      'ebytes = $ebytes'); // ebytes = [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100]
  print('encoded = $encoded'); // encoded = SGVsbG8gV29ybGQ=

  //Decoding an encoded string;
  var backToBytes = base64.decode(encoded);
  var decoded = utf8.decode(backToBytes);
  print(
      'backToBytes = $backToBytes'); // backToBytes = [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100]
  print('decoded = $decoded'); // Hello World
}
