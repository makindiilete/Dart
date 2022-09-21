/* 
To create Hashes, we cannot use our own algorithms because it will not standardized or tested.. So we have to use already created, standard and tested algorithms from 3rd party libaries...
For this case, we will be using 'pointycastle'...

- Install d package 'https://pub.dev/packages/pointycastle/install'

NOTE : - ENCODING VS ENCRYPTION

Encoding simply flips data around into different formats but does not necessarily hides it or protect it
Encryption hides the information from the user..

So with Hashing, we first hides the information by encrypting it. This will come out as a long list of integers which we then convert to a shorter encoded format.
 */
import 'dart:convert';
import 'dart:typed_data';

import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  //We create a new Digest instance and pass the name of the algorithm we want to use.. In ds case 'SHA-256'
  Digest digest = Digest("SHA-256");

  //d value we want to hash
  String password = "123999_@ABCabc";

// we convert d pasword to a data dt can be passed to the hashing machine
  Uint8List data = Uint8List.fromList(utf8.encode(password));
  Uint8List hash = digest.process(data);

  print(
      "data = $data"); // data = [49, 50, 51, 57, 57, 57, 95, 64, 65, 66, 67, 97, 98, 99]
  print(
      'Hashed = $hash'); // Hashed = [42, 131, 95, 111, 240, 234, 140, 163, 204, 93, 177, 42, 105, 9, 196, 49, 204, 160, 250, 101, 195, 209, 48, 176, 239, 26, 129, 121, 192, 36, 8, 120]
  print(
      'Encoded hashed password = ${base64.encode(hash)}'); // Encoded hashed password = KoNfb/DqjKPMXbEqaQnEMcyg+mXD0TCw7xqBecAkCHg=
}
