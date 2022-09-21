import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  var data = 'Hello World';

  List<int> dataToSend = utf8.encode(data);
  int port = 3000;

  //Server
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port)
      .then((RawDatagramSocket udpSocket) {
    udpSocket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        Datagram? dg = udpSocket.receive();
        print(utf8.decode(dg!.data));
      }
    });

    //client
    udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
    print('Sent!');
  });

  //Assignments : - Make a get request to an api and get the length
  var url = 'http://www.voidrealms.com';
  var response = await http.get(Uri.parse(url));
  print('Length: ${response.body.length}');
}
