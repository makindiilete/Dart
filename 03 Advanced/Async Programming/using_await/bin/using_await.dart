import 'dart:io';

import 'package:using_await/using_await.dart' as using_await;

/* In the last lecture, we managed our future functions with then()... even tho this works but then we see that non async functions runs first even though they are arranged to come last....
With await, we can tell other functions below the async function to wait till the async function is completed then the program resumes execution.. this is useful most times maybe we need the result of the async function to continue operation
 */
Future<void> main(List<String> arguments) async {
  print('Starting----');
  // cos d appendFile returns a 'future' file, we need to await it
  File file = await appendFile();
  print('Appended to file ${file.path}');

  print("***** End");
}

// ds function returns a file async (returns a file in the future)
Future<File> appendFile() {
  File file = File('${Directory.current.path}/test.txt');
  DateTime now = DateTime.now();
  return file.writeAsString('$now\r\n', mode: FileMode.append);
}
