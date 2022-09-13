void main(List<String> arguments) {
  String hello = "hello world";
  print("hello world");
  print(hello);

  String name = 'Michaelz Omoakin';
  print("Hello $name");

  //get substrings
  // it will pick d characters from index 0 to 7/// name.substring(0,7) will pick characters from 0 to 6
  String firstname = name.substring(0,8);
  print('Your firstname = $firstname'); // Your firstname = Michaelz

  //get the index of a string/character
  int index = name.indexOf(" ");
  String lastname = name.substring(index);
  print("Your lastname = $lastname"); // Your lastname = Omoakin


  // get d length of a string
  print(name.length);
  print("Your name '$name', contains ${name.length} characters! "); // Your name 'Michaelz Omoakin', contains 16 characters!

  // Contains
  print(name.contains('mic')); // true

  // Create a List from a string
  List parts = name.split(" ");
  print(parts); // [Michaelz, Omoakin]
  print(parts[0]); // Michaelz
  print(parts[1]); // Omoakin
}
