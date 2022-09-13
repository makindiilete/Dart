// this simply import the 'helloworld.dart' component and assign it to a variable
import 'package:helloworld/helloworld.dart' as helloworld;

void main(List<String> arguments) {
  // now inside the 'helloworld' variable that reference the component, we now av access to all d functions inside
  print('Hello world: ${helloworld.calculate()}!');
  print('Greeting: ${helloworld.greet()}');
  print('Michael Akin');
}
