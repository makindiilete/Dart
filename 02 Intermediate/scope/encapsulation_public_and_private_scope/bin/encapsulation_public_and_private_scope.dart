import 'package:encapsulation_public_and_private_scope/animal.dart';

void main(List<String> arguments) {
  /* 
  ENCAPSULATION : - Encapsulation is a concept of hiding the internal details of a class and exposing only the details we need to be accessible outside.. We do this with private and public properties and methods....
   */
  Animal cat = Animal('Randy', 40, 'Hairry');
  //we can modify the public properties of a class
  cat.breed = 'mixed';
  // cat._name = 'Dog'; // ds is a private property and cannot be accessed here (Error: The setter '_name' isnt defined for the class 'Animal')
  // cat._display(); // ds is a private  method and cannot be accessed here too.

  cat.saySomething(
      'Mike sent a message'); // via d saySomething public function, we can now perform what we wanted to do with _displayMessage.

  cat.sayHello();
}
