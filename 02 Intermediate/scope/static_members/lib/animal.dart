class Animal {
  /* 
  int _counter = 0;


    Animal dog = Animal(); // Current count is 1
  Animal cat = Animal(); // Current count is 1
  Animal fish = Animal(); // Current count is 1
  Animal turkey = Animal(); // Current count is 1

  After creating an instance of dog, d _counter sud av bin incremented from 1 to 2, after cat it sud be 3 on creating a fish but then all instances remain 1... Ds is because the _counter variable was copied different for each of the animals so all the instances have different _counter...

  For the _counter to increment, all instances sud av the same _counter so on creating a new Animal, we can get the updated value of _counter.. 

  We can achieve this by making _counter static

  NOTE: - When we declare a member of a class static, it means no matter how many objects/instance of the class are created, there is only one copy of the static member... ds is why we are able to achieved returning the updated counter value as we create new instance of the Animal class... 

  NOTE: - You also use static when you want a member to be accessible to the outside from the class itself not from the created instances
   */

  // static property
  static int counter = 0;

  Animal() {
    counter++;
    print('Current count is $counter');
  }

  // static method
  static void run() => print('running...');
}
