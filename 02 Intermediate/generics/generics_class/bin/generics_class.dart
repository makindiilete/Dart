import 'package:generics_class/counter.dart';

void main(List<String> arguments) {
  // List<double> doubles = <double>[];
  Counter<double> doubles = Counter();
  doubles.addAll([1.0, 2.2, 3.6]);
  doubles.total();

  /* 
  ASSIGNMENT

  Make the following classes

Employee

Manager – inherit employee

Cashier – inherit employee

Payroll – use generics to allow only descendants of the employee class

Both the Cashier and Manager classes should have a “sayHello” function that prints the class name.

The payroll class should allow adding to an internal list, and a “print” function that calls the “sayHello” of each item in the internal list  
   */
}
