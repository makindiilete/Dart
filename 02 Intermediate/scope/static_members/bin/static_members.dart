import 'package:static_members/animal.dart';
import 'package:static_members/person.dart';

void main(List<String> arguments) {
  Animal dog = Animal(); //Current count is 1
  Animal cat = Animal(); // Current count is 2
  Animal fish = Animal(); // Current count is 3
  Animal turkey = Animal(); // Current count is 4

  //Static methods and properties can only be accessed by calling the class itself and not from the instance of the class
  // print(dog.counter); // ds will throw error
  // print(dog.run); // ds will throw error

  print(Animal.counter); // 4
  Animal.run(); // running...

  //Assignment
  /* 
Create a person class that has an age getter but not a setter. This will allow the age to be read from the class but not changed. Set the age in the class constructor
 */
  Person uiKing = Person(31);
  print('uiKing is ${uiKing.getAge} years old');
}
