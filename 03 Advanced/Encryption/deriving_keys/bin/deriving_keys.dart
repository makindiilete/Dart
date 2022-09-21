import 'dart:convert';
import 'dart:typed_data';

import 'package:deriving_keys/deriving_keys.dart' as deriving_keys;
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  String password = 'password';

  var salt = createUint8ListFromString('salt');
  var pkcs = KeyDerivator("SHA-1/HMAC/PBKDF2");
  var params = Pbkdf2Parameters(salt, 100, 16);

  pkcs.init(params);

  Uint8List key = pkcs.process(createUint8ListFromString(password));

  handleDisplayResults("Key value", key);
}

Uint8List createUint8ListFromString(String value) =>
    Uint8List.fromList(utf8.encode(value));

void handleDisplayResults(String title, Uint8List value) {
  print("title => $title"); // title => Key value
  print(
      "value => $value"); // value => [133, 149, 215, 174, 160, 231, 201, 82, 163, 90, 249, 168, 56, 204, 107, 57]
  print(
      "Encoded value => ${base64.encode(value)}"); // Encoded value => hZXXrqDnyVKjWvmoOMxrOQ==
  print("====================");
}
