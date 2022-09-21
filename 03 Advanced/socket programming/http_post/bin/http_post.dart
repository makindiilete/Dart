import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  var url = 'http://httpbin.org/post';
  var response = await http.post(Uri.parse(url), body: 'name=Bryan&color=blue');
  print('Response status ${response.statusCode}');
  print('Response Body ${response.body}');

  /* 
  Response status 200
Response Body {
  "args": {}, 
  "data": "name=Bryan&color=blue", 
  "files": {}, 
  "form": {}, 
  "headers": {
    "Accept-Encoding": "gzip", 
    "Content-Length": "21", 
    "Content-Type": "text/plain; charset=utf-8", 
    "Host": "httpbin.org", 
    "User-Agent": "Dart/2.18 (dart:io)", 
    "X-Amzn-Trace-Id": "Root=1-632784cc-69a930b63b28293d039180dc"
  }, 
  "json": null, 
  "origin": "105.112.179.97", 
  "url": "http://httpbin.org/post"
}
   */
}
