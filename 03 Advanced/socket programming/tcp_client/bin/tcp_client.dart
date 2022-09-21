import 'dart:io';

// Now dt we have our tcp_server setup, we can communicate with it with a tcp_client
Future<void> main(List<String> arguments) async {
  var socket = await Socket.connect('127.0.0.1', 3000);
  print('Connected');
  // ds is the message we will send to the socket server..
  socket.write('Hello World');
  print('Sent, closing');
  // socket.write() is not async bcos it happens quickly but socket.close is async
  await socket.close();
  print('Closed');
  exit(0);
}
