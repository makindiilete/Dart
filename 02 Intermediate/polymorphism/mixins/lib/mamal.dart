// Mamal class inherits all properties available in Animal class
import 'animal.dart';

class Mamal extends Animal {
  bool hasHair = true;
  bool hasBackBone = true;
  bool isWarmBlooded = true;

  void walk() => print('mamal walking');
}
