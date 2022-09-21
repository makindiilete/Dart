import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) {
  //AES
  final key = randomBytes(16);
  final params = KeyParameter(key);

  BlockCipher cipher = BlockCipher("AES");
  cipher.init(true, params);

  //Encrypt
  String plaintext = 'Hello World';
  Uint8List plain_data = createUint8ListFromString(
      plaintext.padRight(cipher.blockSize)); // PAD - NOT 1000% secure
  Uint8List encrypted_data = cipher.process(plain_data);

  //Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted_data = cipher.process(encrypted_data);

  displayUint8List('Plain text', plain_data);
  displayUint8List('Encrypted data', encrypted_data);
  displayUint8List('Decrypted data', decrypted_data);

  //Make sure they match
  Function eq = const ListEquality().equals;
  assert(eq(plain_data, decrypted_data));

  print(utf8.decode(decrypted_data).trim());

  /* 
  Plain text
[72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 32, 32, 32, 32, 32]
SGVsbG8gV29ybGQgICAgIA==

Encrypted data
[65, 172, 167, 122, 189, 234, 46, 203, 20, 119, 58, 15, 214, 215, 160, 135]
Qayner3qLssUdzoP1teghw==

Decrypted data
[72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 32, 32, 32, 32, 32]
SGVsbG8gV29ybGQgICAgIA==

Hello World
   */
}

//From tutorial 2
Uint8List createUint8ListFromString(String value) =>
    Uint8List.fromList(utf8.encode(value));

//From tutorial 2
void displayUint8List(String title, Uint8List value) {
  print(title);
  print(value);
  print(base64.encode(value));
  print('');
}

//From Tutorial 3
Uint8List randomBytes(int length) {
  final rnd = SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  final key = Uint8List(16);
  final keyParam = KeyParameter(key);
  final params = ParametersWithIV(keyParam, Uint8List(16));

  rnd.seed(params);
  var random = Random();
  for (int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}
