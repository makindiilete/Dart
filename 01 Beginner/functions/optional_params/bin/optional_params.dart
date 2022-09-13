void main(List<String> arguments) {
  // With optional parameters, we can make the parameter of a function optional that is, it is not required
  sayHello();

  download('myfile.txt');
  download('myfile2.txt', true);
}

// name is optional and can be null
void sayHello([String? name]) {
  print('Hello $name');
}

// OR

// name is optional and we give it a default value '
void sayHellov2([String name = '']) {
  print('Hello $name');
}

void download(String file, [bool open = false]) {
  print('Downloading file');
  if (open) {
    print('Opening $file');
  }
}
