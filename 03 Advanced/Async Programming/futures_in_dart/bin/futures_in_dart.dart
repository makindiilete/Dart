import 'dart:io';

import 'package:futures_in_dart/futures_in_dart.dart' as futures_in_dart;

void main(List<String> arguments) {
  // we will b writing to a file 'text.txt' inside d current directory
  String path = "${Directory.current.path}/text.txt";
  print("Appending to ${path}"); // ds runs first

// we create d file using the path defined above
  File file = File(path);

// we open the file asyncronously
  Future<RandomAccessFile> f = file.open(mode: FileMode.append);

// ds runs 3rdly
  f.then((RandomAccessFile raf) {
    print('File has been opened');

    raf
        .writeString('Hello World') // async version
        .then((value) => print('File has been appended!'))
        .catchError(() => print('An Error Occured!'))
        .whenComplete(() => raf.close()); // async version
  });

  print('****** The end'); // ds run secondly

  /* 
  Appending to /Users/michaelakindiilete/Desktop/dev/Personal/Dart/03 Advanced/Async Programming/futures_in_dart/text.txt
****** The end
File has been opened
File has been appended!
   */
}
