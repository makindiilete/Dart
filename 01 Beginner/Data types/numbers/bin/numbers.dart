
void main(List<String> arguments) {
  // Numbers : num can take but integer and decimal/double
  num age = 34;

  // Int : - ds can only take whole number
  int people = 6;

  //Double : ds can only take decimal
  double temp = 32.06;

  //Convert/parse a string to integer
  int test = int.parse("12");
  print(test);

  // handle conversion error - Deprecated version
  int err = int.parse("12.09", onError: ((source) => 0));
  print(err);

  // handle conversion error - Recommended version
  var value = int.tryParse("12.09");
  print('value = $value');
  if (value == null) {
    // handle the problem
  print(0);
  }

  // Maths
  int ageOfDog = 37;
  int dogyears = 7;
  int dogage = ageOfDog * dogyears;
  print("Your age in dog years is: $dogage");

}
