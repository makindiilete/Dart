/* With getters and setters, we can access a private properties from the outside */
import 'package:getters_and_setters/animal.dart';

void main(List<String> arguments) {
  Animal dog = Animal('Rango', 6);
  // set a value for the _name property via the setter 'setName'
  dog.setName = 'Fido';

  //get d value for the _name property via the getter 'getName'
  print(dog.getName); // Fido

  //get the value for the _age property via the getter 'getAge'
  print('Dog age is ${dog.getAge}'); // Dog age is 6

  // set the value for the _age property via the setter 'setAge'
  dog.setAge = 4;

  print('New dog age is ${dog.getAge}'); // Dog age is 28 i.e. 4 * 7
}
