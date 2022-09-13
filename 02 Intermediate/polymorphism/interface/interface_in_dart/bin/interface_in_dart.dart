import 'package:interface_in_dart/employee.dart';
import 'package:interface_in_dart/interface_in_dart.dart' as interface_in_dart;
import 'package:interface_in_dart/manager.dart';

void main(List<String> arguments) {
  Manager managerMike = Manager();
  print('My name is ${managerMike.name}');
  managerMike.test();
}
