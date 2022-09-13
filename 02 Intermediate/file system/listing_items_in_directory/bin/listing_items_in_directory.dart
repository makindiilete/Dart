import 'dart:io';

import 'package:listing_items_in_directory/listing_items_in_directory.dart'
    as listing_items_in_directory;

void main(List<String> arguments) {
  Directory dir = Directory.current;
  print(dir.path);
  print("=============");

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((FileSystemEntity value) {
    FileStat stat = value.statSync(); // stat contains internal files properties

    print('Path: ${value.path}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
    print("=============");
  });
}
