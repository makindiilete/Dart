import 'dart:convert';
import 'dart:io';

/* 
We will be learning how to compress data in various compression format : - Gzip, zlib and d popular Zip
 */

void main(List<String> arguments) {
  String data = '';
  for (int i = 0; i < 100; i++) {
    //We print out 100 'Hello World' on different lines
    data = data + "Hello world\r\n";
  }

// We encode the data
  List<int> encodedData = utf8.encode(data);

  // We compress the encoded data
  List<int> compressedData = gzip.encode(encodedData);

  // We decompress the encoded data
  List<int> decompressedData = gzip.decode(compressedData);

  print(
      'Encoded Data is ${encodedData.length} bytes'); // Encoded Data is 1300 bytes
  print(
      'Compressed Data is ${compressedData.length} bytes'); // Compressed Data is 44 bytes
  print(
      'decompressedData Data is ${decompressedData.length} bytes'); // decompressedData Data is 1300 bytes

  // So we successfully compressed a 1300bytes of data to 44 bytes

  String decodedData = utf8.decode(decompressedData);

// ds checks if the initial data is the same thing we decoded, it will throw an exception if this is not the case, else it will do nothing
  assert(data == decodedData);
  print('Original stored data = ${decodedData}');
}
