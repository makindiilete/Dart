// class Feline inherits all available properties in Mamal class
import 'mamal.dart';

class Feline extends Mamal {
  bool hasClaws = true;
  void growl() => print('grrrrrrr');

// ds override the walk method of d mamal class and does something different with it for Felines
  @override
  void walk() {
    print('Feline walking');
    // but then we need to call d walk method of d parent class we inheriting from using the super keyword
    super.walk();
  }
}
