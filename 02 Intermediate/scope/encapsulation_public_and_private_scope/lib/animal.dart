class Animal {
  // Private property
  String _name = '';
  // Private property
  int _age = 0;
  // Public property
  String breed = '';

  Animal(String name, int age, String breed) {
    // bcos _name and _age are private property starting with the _ sign, we do not need to use 'this' with them to differentiate them from the constructors params because both already looks different
    _name = name;
    _age = age;

    // but for 'breed' that is s public property, we need to use the 'this' keyword else we will have a confusing 'breed = breed'
    this.breed = breed;
  }

  void sayHello() => print(
      'Hello, my name is $_name. I am $_age years old, and I am a $breed');

// Private method
  void _display(String message) => print('Message $message');

  // to be able to use the _display method outside, we can create a public method dt call d _display() method
  void saySomething(String message) => print('Message: $message');
}
