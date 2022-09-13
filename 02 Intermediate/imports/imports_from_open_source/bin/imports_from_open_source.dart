/* 
As https://www.npmjs.com/ is to Javascript, so is https://pub.dev/ to Dart..

To test this, we will be using the http package (axios), so we can search for this on pub.dev >> Go to 'Installation' section, copy the dependency code and put it inside out pubspec.yaml file.
 */
import 'package:http/http.dart' as http;

// importing the path library
import 'package:path/path.dart' as p;

void main(List<String> arguments) {
  var url = Uri.parse('http://www.voidrealms.com');
  try {
    http.get(url).then((value) {
      print(value.statusCode); // ds returns d status code
      print(value.body); // ds returns d html document
    });
  } catch (e) {
    print('Error Detected: = ${e.toString()}');
  }

  //Assignment
/* 
Import the "path" package and use it to join a directory path to a filename and print out the results.
 */

  try {
    var joinedPath = p.join('directory', 'file.txt');
    print('Joined path = $joinedPath'); // directory/file.txt
  } catch (e) {
    print(e.toString());
  }
}
