import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);

  print('Listening');

  await for (var socket in serverSocket) {
    // When we connect to our socket, we will pass some values to it via the terminal
    socket.listen((List<int> values) {
      // So we print out the socket address, port and new values passed
      print(
          '${socket.remoteAddress}:${socket.port} = ${utf8.decode(values)}'); // InternetAddress('127.0.0.1', IPv4):3000 = Hello World
    });
  }
}
