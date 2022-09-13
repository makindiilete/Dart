// Dart does not have the concept of Array like we do av in javascript.. What we have is a collection where the 'List' type is the top on the list

void main(List<String> arguments) {
  List test = [1,2,3,4];
  // Length of list
  print('Length = ${test.length}'); // Length = 4

  // access item in a list by its index
  print('First Item is ${test[0]}'); // First Item is 1

  print('Element at index 3 = ${test.elementAt(3)}'); // Element at index 3 = 4
  // print('Element at index 300 = ${test.elementAt(300)}'); // RangeError (index): Invalid value: Not in inclusive range 0..3: 300

  // Another way of create a list (A dynamic list containing different data types)

  List things = [];
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things); // [1, cats, true]

  // Create a List that can only contain a specific type
 List<int> numbers = <int>[]; // ds list can only contain numbers
  numbers.add(1);
  numbers.add(56);
  print(numbers);
  numbers.add('string'); //  Error: The argument type 'String' can't be assigned to the parameter type 'int'.
}
