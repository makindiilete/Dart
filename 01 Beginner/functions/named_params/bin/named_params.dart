import 'package:named_params/named_params.dart' as named_params;

void main(List<String> arguments) {
// With named params, we call parameters by their name instead of how they are arranged.. This way we do not need to follow the order of their arrangement
  int footage = squareFeet(length: 10, width: 5);
  print('Footage is $footage'); // Footage is 50

  download('mike.txt');
}

int squareFeet({int width = 0, int length = 0}) {
  return width * length;
}

//optional named function... here d port is optional bcos we passed a default value
void download(String file, {int port = 80}) {
  print('Download $file on port $port');
}
