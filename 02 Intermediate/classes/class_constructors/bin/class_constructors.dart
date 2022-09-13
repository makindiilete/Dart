import 'package:class_constructors/animal.dart';

void main(List<String> arguments) {
  // when we create a new instance of a class, a default constructor is created
  // Animal cat = Animal();
  Animal cat = Animal('Mayor');
  Animal dog = Animal('Dinma');
  cat.sayHello();
  dog.sayHello();
  /* 
  Default Constructor called
  Hello
   */
}
