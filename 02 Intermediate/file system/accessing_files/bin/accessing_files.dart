import 'dart:io';

void main(List<String> arguments) {
  Directory dir = Directory.current;
  print(dir.path);

  File file = File('${dir.path}/myFile.txt');

  writeFile(file);
  readFile(file);
}

// Append => add to the existing content
// Write => Overwrite the existing content
void writeFile(File file) {
  // we open the file for random operations and we set the mode to append
  RandomAccessFile randomFile = file.openSync(mode: FileMode.append);
  randomFile.writeStringSync('Hello World\r\nHow are you today?');
  randomFile
      .flushSync(); // ds is not necesary bcos closeSync() calls flushSync() in the background
  randomFile.closeSync();
}

//reads d content of d written file
void readFile(File file) {
  if (!file.existsSync()) {
    print('File not found');
    return;
  }

  print('Reading string');
  print(file.readAsStringSync());

  print('Reading bytes');
  List values = file.readAsBytesSync();
  values.forEach((element) {
    print(element);
  });

  /* 
  ASSIGNMENT

  Create a file in the current directory.

Write "Hello World" into the file.

Read the contents of the file back.

Delete the file
   */
}
