import 'dart:convert';
import 'dart:io';

import 'package:gzip_vs_zlib/gzip_vs_zlib.dart' as gzip_vs_zlib;

void main(List<String> arguments) {
/* We will be testing this two (GZIP & ZLIB) compression tool and see the one dt compressed better */
  int zlibCodec = testCompress(zlib);
  int gzipCodec = testCompress(gzip);

  print(
      "zlib compressed size = $zlibCodec"); // zlib compressed size = 32 (size is smaller)
  print(
      "gzip compressed size = $gzipCodec"); // gzip compressed size = 44 (size is bigger but faster)
}

String generateData() {
  String data = '';
  for (var i = 0; i < 100; i++) {
    data = "${data}Hello World\r\n";
  }
  return data;
}

int testCompress(var codec) {
  String data = generateData();

  List<int> encodedData = utf8.encode(data);

  List<int> compressedData = codec.encode(encodedData);

  List<int> decompressedData = codec.decode(compressedData);

  print('Codec Used = ${codec.toString()}');
  print("encodedData = ${encodedData.length} bytes");
  print("compressedData = ${compressedData.length} bytes");
  print("decompressedData = ${decompressedData.length} bytes");

  print("=============");

  String decodedData = utf8.decode(decompressedData);
  assert(data == decodedData);
  return compressedData.length;
}
