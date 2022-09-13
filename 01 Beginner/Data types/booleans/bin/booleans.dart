void main(List<String> arguments) {
  bool isDog = false; // setting an initial value
  bool isOn =
      true; // this is a variable i.e. var or let whose value can change later
  print('isOn = $isOn');

  isOn = true;
  print('isOn = $isOn');

  isOn = false;
  print('isOn = $isOn');

  print('isOn is a ${isOn.runtimeType}'); // isOn is a bool (getting d type of a variable)

  // specifying explicitly a variable
  var isOff = true;
  print('isOff is $isOff');
}
