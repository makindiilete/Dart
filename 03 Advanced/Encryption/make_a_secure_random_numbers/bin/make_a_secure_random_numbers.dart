/* 
At a casino for an example, you will need a cryptographic secure random numbers
 */
import 'package:pointycastle/pointycastle.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';

void main(List<String> arguments) {
  print(randomBytes(
      16)); // [144, 56, 78, 252, 179, 209, 10, 210, 105, 114, 162, 6, 230, 47, 0, 191]
}

Uint8List randomBytes(int length) {
  final rnd = SecureRandom("AES/CTR/AUTO-SEED-PRNG");

// we will be generating 16 random numbers
  final key = Uint8List(16);
  final keyParam = KeyParameter(key);
  final params = ParametersWithIV(keyParam, Uint8List(16));

  rnd.seed(params);

// Random() returns random numbers
  var random = Random();
  // we want to generate random numbers from 0 to 255
  for (int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}
