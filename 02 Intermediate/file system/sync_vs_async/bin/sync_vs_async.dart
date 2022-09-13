import 'dart:io';

void main(List<String> arguments) {
  String path = '/';
  Directory dir = Directory(path);

  if (dir.existsSync()) {
    print('exists');
  } else {
    print('not found');
  }
}
