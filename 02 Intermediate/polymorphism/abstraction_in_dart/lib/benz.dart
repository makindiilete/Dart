import 'package:abstraction_in_dart/car.dart';

class Benz extends Car {
  Benz() {
    hasHorn = true;
    hasWheels = true;
  }
  @override
  void honk() {
    print('Benz 350 Class beep beep...');
    // super.honk();  // only call ds if the honk() method in d abstract class contains an implementation else there is nothing to call
  }
}
