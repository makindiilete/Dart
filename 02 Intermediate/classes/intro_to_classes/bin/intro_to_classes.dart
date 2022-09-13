import 'package:intro_to_classes/intro_to_classes.dart' as intro_to_classes;
import 'package:intro_to_classes/intro_to_classes.dart';
import 'package:intro_to_classes/myClass.dart';

void main(List<String> arguments) {
// to use d class and access its methods and properties, you create an instance of the class

  // MyClass cls = new MyClass();
  MyClass mine = MyClass();
  MyClass yours = MyClass();
  mine.sayHello('Mike');
  yours.sayHello('Dinma');

// ds is not really a class but a method call
  var method = calculate();

  /* 
  Difference between a class and a method from a file is that with class, you can create different instance of that class and pass different parameters to achieve different result.
   */
}
