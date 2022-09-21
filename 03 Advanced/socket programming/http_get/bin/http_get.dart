import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  var url = 'http://httpbin.org/';
  var response = await http.get(Uri.parse(url));
  print('Response status ${response.statusCode}');
  print('Response body ${response.body}');
}
