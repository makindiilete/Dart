import 'package:inheritance/animal.dart';

// Mamal class inherits all properties available in Animal class
class Mamal extends Animal {
  bool hasHair = true;
  bool hasBackBone = true;
  bool isWarmBlooded = true;

  void walk() => print('mamal walking');
}
