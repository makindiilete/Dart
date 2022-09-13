/* In other programming languages like C#, you can inherit multiple classes by separating them with comma i.e. 
class Feline extends Mamal, Dragon{}

But this will not work in dart... Dart makes multiple inheritance possible via a concept known as Mixins

Mixins in action 
class Monster extends Feline with Dragon, Ghost {}

NOTE : - Classes that you are inheriting from with Mixins are not allowed to inherit from other classes else you will get the error 'The class 'Dragon' can't be used as a mixin because it extends a class other than 'Object'.'
 */
import 'package:mixins/monster.dart';

void main(List<String> arguments) {
  Monster uglyMonster = Monster();
  uglyMonster.walk();
  print('ugly monster breathes fire? ${uglyMonster.breathsFire}');
  print('ugly monster breathes fire? ${uglyMonster..walksThroughWalls}');
}
