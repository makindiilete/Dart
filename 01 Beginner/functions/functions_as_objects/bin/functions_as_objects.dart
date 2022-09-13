void main(List<String> arguments) {
  // This way, we can assign a function to a variable
  int age = 43;
  var dogYears = calcYears;
  var catYears = calcYears;

  print(
      'Your age "$age", in dog years is ${dogYears(age: age, multiplier: 7)}'); // your age "43", in dog years is 301
  print(
      'Your age "$age", in cat years is ${catYears(age: age, multiplier: 17)}'); // your age "43", in cat years is 731
}

int calcYears({int age = 0, int multiplier = 0}) {
  return age * multiplier;
}
