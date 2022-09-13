import 'package:inheritance/feline.dart';
import 'package:inheritance/mamal.dart';

void main() {
  Feline cat = Feline();
  // bcos Feline class extends Mamals which in turns extends animal, we can call the breath() function dt belongs to the animal class
  cat.breath(); // breathing....

  //Feline walking
  // mamal walking
  cat.walk();
}
