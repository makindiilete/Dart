void main(List<String> arguments) {
  // a function call

  test(); // testing

  sayHello('Michaelz'); // Hello Michaelz

  print(dogYears(7)); // 49

  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(20, 20);
  int wall3 = squareFeet(30, 30);
  int wall4 = squareFeet(40, 40);

  double paint = paintNeeded(wall1, wall2, wall3, wall4);

  print('You need $paint gallons of paint');
}

// 'void' type of wat d function returns.. void means nothing i.e. d function does not return anything to d caller
// parameters are placed inside the ()
void test() {
  print('testing');
}

//Using params
void sayHello(name) {
  print('Hello $name');
}

// function with a return type

// ds function returns and integer
int dogYears(int age) {
  return age * 7;
}

// multi params - calculate the size of wall base on the width and height passed
int squareFeet(int width, int length) {
  return width * length;
}

// returns the total number of paint needed base on the size of wall passed
double paintNeeded(int wall1, int wall2, int wall3, int wall4) {
  int footage = wall1 + wall2 + wall3 + wall4;
  return footage / 30;
}
