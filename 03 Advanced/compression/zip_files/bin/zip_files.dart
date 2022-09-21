import 'package:archive/archive_io.dart';
import 'dart:io';
import 'package:path/path.dart' as p;

/* To encode and decode (compress) in zip format, we will be using a 3rd party libary 'archive' https://pub.dev/packages/archive/install

Install it with 

With Dart:

 $ dart pub add archive
With Flutter:

 $ flutter pub add archive
 */
void main(List<String> arguments) {
  // handleZipADirectory(Directory.current.path, "compression.zip");

  handleUnzipFile("Advancly brand resources.zip", Directory.current.path);
}

void handleUnzipFile(String extractedZipFileName, String path) {
  //EXTRACT
  // Read the Zip file from disk.
  final bytes = File(extractedZipFileName).readAsBytesSync();

  // Decode the Zip file
  final archive = ZipDecoder().decodeBytes(bytes);

  // Extract the contents of the Zip archive to disk.
  for (final file in archive) {
    final filename = file.name;
    if (file.isFile) {
      final data = file.content as List<int>;
      File('$path/$filename')
        ..createSync(recursive: true)
        ..writeAsBytesSync(data);
    } else {
      Directory('$path/$filename').create(recursive: true);
    }
  }
  print('Extracted');
}

void handleZipADirectory(String path, String zipName) {
  // Zip a directory containing files using the 'zipname' passed e.g. 'docs.zip'
  var encoder = ZipFileEncoder();
  encoder.zipDirectory(Directory(path), filename: zipName);
  print('Compressed');
}
