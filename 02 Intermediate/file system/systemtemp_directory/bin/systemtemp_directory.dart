/* the systemtemp is a temporary directory that exist on all operating systems.. The OS takes care of removing this directory when its not in used */

import 'dart:io';

void main(List<String> arguments) {
  // we create a temporary system directory
  Directory dir = Directory.systemTemp.createTempSync();
  print(dir.path);

  if (dir.existsSync()) {
    print('removing ${dir.path}');
    dir.deleteSync();
  } else {
    print('Could not find ${dir.path}');
  }
}
