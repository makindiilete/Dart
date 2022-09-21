import 'dart:io';

import 'package:running_processes/running_processes.dart' as running_processes;

void main(List<String> arguments) {
  //List all files in a directory - Linux specific
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
    print(
        'Exit Code: ${results.exitCode}'); // Zero means everything ends well.. any other number from zero means something went wrong and it will contain the error code
  });

  /* 
  total 48
-rw-r--r--  1 michaelakindiilete  staff    29 Sep 13 23:33 CHANGELOG.md
-rw-r--r--  1 michaelakindiilete  staff   122 Sep 13 23:33 README.md
-rw-r--r--  1 michaelakindiilete  staff  1038 Sep 13 23:33 analysis_options.yaml
drwxr-xr-x  3 michaelakindiilete  staff    96 Sep 13 23:33 bin
drwxr-xr-x  3 michaelakindiilete  staff    96 Sep 13 23:33 lib
-rw-r--r--  1 michaelakindiilete  staff  7442 Sep 13 23:33 pubspec.lock
-rw-r--r--  1 michaelakindiilete  staff   247 Sep 13 23:33 pubspec.yaml
drwxr-xr-x  3 michaelakindiilete  staff    96 Sep 13 23:33 test

Exit Code: 0
   */

  /* 
  ASSIGNMENT
  Determine the operating system you are on and print the PATH variable from the operating system.
   */
  print('You are running on ${Platform.operatingSystem}');
  print('Your current path is `${Platform.script.path}`');
  print("========================");
}
