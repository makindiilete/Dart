/* An abstract class is a class containing one or more methods without implementation in them... The implementation of these methods will be dtermined by the classes that implements them.... It looks similar to an interface but the difference is that an interface methods contains implementation and to use an abstract class, we used the 'extends' keyword not 'implements'... */
import 'package:abstraction_in_dart/benz.dart';
import 'package:abstraction_in_dart/bnb.dart';

void main(List<String> arguments) {
  Benz class350 = Benz();
  class350.honk();
  print('=======================');
  /* 
  ASSIGNMENT

Make a Bed and Breakfast class (BnB) that inherits a House class and uses a Hotel class as a interface.
The hotel class should have a "guests" variable as an integer.
The abstract house class should have a rooms variable as a integer and a function "ringDoorbell".
The Bnb class will need to implement the house properties
   */

  BnB foodie = BnB();
  foodie.ringDoorBell();
  print('foodie contains ${foodie.guests} guests, and ${foodie.rooms} rooms');
}
