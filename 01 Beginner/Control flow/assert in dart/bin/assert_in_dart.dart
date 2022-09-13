import 'package:assert_in_dart/assert_in_dart.dart' as assert_in_dart;

void main(List<String> arguments) {
// Assert determines if something is true
print('starting');
int age = 43;
assert(age == 43);
assert(age == 12); // Failed assertion: line 8 pos 8: 'age == 12': is not true.
print('finish');
}
