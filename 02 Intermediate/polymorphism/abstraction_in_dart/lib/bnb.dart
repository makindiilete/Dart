import 'package:abstraction_in_dart/hotel.dart';
import 'package:abstraction_in_dart/house.dart';

// BnB is performing multiple inheritance extending House and Hotel
class BnB extends House with Hotel {
  BnB() {
    guests = 10;
    rooms = 100;
  }

// implements the ringDoorBell() method from house.dart
  @override
  void ringDoorBell() {
    print('BnB ringing the bell.....');
  }
}
