import 'package:mixins/dragon.dart';
import 'package:mixins/feline.dart';
import 'package:mixins/ghost.dart';

// Multiple inheritance from Feline, Dragon & Ghost with mixins
class Monster extends Feline with Dragon, Ghost {
  bool glowInDark = true;
  @override
  void walk() {
    print('Monster walking');
    super.walk();
  }
}
