class Animal {
  // d underscore at the begining of ds variable '_name' means it is private to this class and cannot be accessed/called outside of this class.
  String _name = '';

/* // under d hood, d constructor is created which we can prove with a print statement
  Animal() {
    print('Default Constructor called');
    // So here we assign a value to our private property inside the default constructor
    _name = 'Mike';
  } */

  Animal(String name) {
    _name = name;
  }
  void sayHello() {
    if (_name.isEmpty) {
      print('Hello');
    } else {
      print('Hello $_name nice to meet you.');
    }
  }
}
