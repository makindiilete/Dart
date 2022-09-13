abstract class Car {
  bool hasWheels = false;
  bool hasHorn = false;

  // void honk() => print('Car beep beep'); // ds will make calling 'super.honk()' work in d child class
  void
      honk(); // calling super.honk() on ds will not work bcos d method does not contain an implementation
}
