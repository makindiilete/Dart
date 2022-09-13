import 'package:intro_to_generics/intro_to_generics.dart' as intro_to_generics;

void main(List<String> arguments) {
  List<int> numbers = <int>[];
  numbers.addAll([1, 2, 3, 4, 5]);
  print(numbers);

  print('===============');

  List<String> letters = <String>[];
  letters.addAll(['a', 'b', 'c']);
  print(letters);

  print('===============');

  add(3, 6);
  add(2.03, 3.04);
  add('Hello ', 'World');

  print('===============');
  addNumbers(3, 5);
  addNumbers(2.03,
      3.04); // ds will work even though d arguments are double but since 'num' includes both int and double so any of those will work
/*   addNumbers('Hello ',
      'World'); //ds will not work bcos our dynamic T extends num and string is not included.... */
}

//Generics simple example : <T> here means d parameter of this function can be of any type (int, double, string) etc.. it can even be a class
void add<T>(T a, T b) {
  print('$a$b');
  // print(a + b); // ds will raise an error dt the operator is not defined for type object.. ds is bcos we av a generic type here so if the type is a class, how to we sum up two classes?
}

//here we will be able to use the + because our dynamic type T is extending type num
void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}
