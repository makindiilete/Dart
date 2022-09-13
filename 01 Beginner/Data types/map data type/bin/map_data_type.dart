
void main(List<String> arguments) {
 //Map = key value pair (ds sud be d objects of javascript)

  Map people = {"dad" : 'Michaelz', 'son': 'Emeka', 'mother': 'Dinma'};

  print(people); // {dad: Michaelz, son: Emeka, mother: Dinma}

  //Print all d keys
  print('Keys are ${people.keys}'); // Keys are (dad, son, mother)

  //Print all d values
  print('Values are ${people.values}'); // Values are (Michaelz, Emeka, Dinma)

  //Access values using keys
  print('The value of dad = ${people['dad']}'); // The value of dad = Michaelz


  // Specifying the type for the keys and values
  Map<String, num> numbers = {}; //ds Map can take a key of string and value of number

  // adding keys and values to the Map
  numbers.putIfAbsent('num1', () => 1);
  numbers.putIfAbsent('num2', () => 2);
  numbers.putIfAbsent('num3', () => 3);

  print(numbers);
  print(numbers['num4']); // null
}
