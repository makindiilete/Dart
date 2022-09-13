import 'package:complex_generics/complex_generics.dart' as complex_generics;

void main(List<String> arguments) {
  List<num> values = [1, 2, 3, 4, 5];

  print(add(2.03, values));
}

// a function 'add' with a dynamic return type 'T'
// d function dynamic type 'T' extends 'num' which means it can take both integer and double and can also return any of the two
// it takes two parameters : 'T' (int or double) value, List<T> items (A list containing either integer or double)
num add<T extends num>(T value, List<T> items) {
  num sum = value;
  for (var item in items) {
    sum = sum + item;
  }

  return sum;
}
