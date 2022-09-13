class Dog {
  int age = 1;
  String name = 'bingo';

/*   Dog(int ageParam, String nameParam) {
    // We assign the arguments that will be passed to this constructor to update the age and name properties already declared in this class
    age = ageParam;
    name = nameParam;
  } */

  // OR

/* // We can make use of the 'this' keyword to make the variable on the left a pointer to the properties declared on line 2 and 3. i.e. 'this.age' is use to update the value of 'int age' on line 2 to the argument that will be passed to the 'age' constructor parameter

  Dog(int age, String name) {
    // We assign the arguments that will be passed to this constructor to update the age and name properties already declared in this class
    this.age = age;
    this.name = name;
  }
  
   */

  // LATEST DART RECOMMENDED VERSION
  Dog(this.age, this.name);

  int ageInDogYears() => age * 7;
}
