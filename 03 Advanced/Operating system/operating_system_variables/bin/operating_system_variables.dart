/* We will learn how to interact with the operating system and use its properties */
import 'dart:io';

void main(List<String> arguments) {
  print(
      'You are running on ${Platform.operatingSystem} with version ${Platform.version}'); // You are running on macos with version 2.18.0 (stable) (Fri Aug 26 10:22:54 2022 +0000) on "macos_arm64"

  // Run code depending on OS
  if (Platform.isWindows) {
    print('Code requiring win32 folder runs here');
  } else if (Platform.isMacOS) {
    print('macOS code runs here');
  } else if (Platform.isIOS) {
    print('iPhone code runs here');
  } else if (Platform.isAndroid) {
    print('Android code runs here');
  } else {
    print('normal code runs here');
  }
  //Get the path where we are executing the current code from
  print(Platform.script
      .path); // /Users/michaelakindiilete/Desktop/dev/Personal/Dart/03%20Advanced/Operating%20system/operating_system_variables/bin/operating_system_variables.dart

  //Get the path where dark sdk is
  print(Platform
      .executable); // /Users/michaelakindiilete/Developer/flutter/bin/cache/dart-sdk/bin/dart

  //Get all env variables
  Platform.environment.keys.forEach((element) {
    print('${element} ==> ${Platform.environment[element]}');
  });
  /* 
  SHELL ==> /bin/zsh
TMPDIR ==> /var/folders/qk/c5yx66z16z17m8vddn4zt12w0000gq/T/
ORIGINAL_XDG_CURRENT_DESKTOP ==> undefined
MallocNanoZone ==> 0
FLUTTER_HOST ==> VSCode
USER ==> michaelakindiilete
PUB_ENVIRONMENT ==> vscode.dart-code
COMMAND_MODE ==> unix2003

SSH_AUTH_SOCK ==> /private/tmp/com.apple.launchd.LBVC6CGj8u/Listeners
__CF_USER_TEXT_ENCODING ==> 0x1F7:0x0:0x0
VSCODE_AMD_ENTRYPOINT ==> vs/workbench/api/node/extensionHostProcess
PATH ==> /opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/michaelakindiilete/Developer/flutter/bin
_ ==> /Users/michaelakindiilete/Developer/flutter/bin/cache/dart-sdk/bin/dart
__CFBundleIdentifier ==> com.microsoft.VSCode
PWD ==> /Users/michaelakindiilete/Desktop/dev/Personal/Dart/03 Advanced/Operating system/operating_system_variables
VSCODE_HANDLES_UNCAUGHT_ERRORS ==> true
XPC_FLAGS ==> 0x0
XPC_SERVICE_NAME ==> application.com.microsoft.VSCode.3112680.3112686
SHLVL ==> 1
HOME ==> /Users/michaelakindiilete
VSCODE_NLS_CONFIG ==> {"locale":"en-us","availableLanguages":{},"_languagePackSupport":true}
LOGNAME ==> michaelakindiilete
VSCODE_IPC_HOOK ==> /Users/michaelakindiilete/Library/Application Support/Code/1.71.0-main.sock
VSCODE_CODE_CACHE_PATH ==> /Users/michaelakindiilete/Library/Application Support/Code/CachedData/784b0177c56c607789f9638da7b6bf3230d47a8c
VSCODE_PID ==> 2639
VSCODE_CWD ==> /
   */
}
