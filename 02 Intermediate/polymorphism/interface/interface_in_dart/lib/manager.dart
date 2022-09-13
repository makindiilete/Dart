import 'package:interface_in_dart/employee.dart';

// Manager is also an Employee so it needs to implements the Employee class and supply values to all its properties and methods
class Manager implements Employee {
  @override
  String name = 'Michaelz Omoakin';

  @override
  void test() {
    print('I am a manager');
  }
}
