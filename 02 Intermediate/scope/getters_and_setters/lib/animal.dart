class Animal {
  String _name = '';
  int _age = 0;
  Animal(String name, int age) {
    _name = name;
    _age = age;
  }

  // A function (getter) that returns the _name value
  String get getName => _name;
  // A function (setter) that assign a value to the _name private property
  set setName(String value) => _name = value;

  // Getter for _age private field
  int get getAge => _age;

  // Setter for _age private field (NOTE : - We manipulate the passed value by multiplying it by 7)
  set setAge(int value) => _age = value * 7;
}
