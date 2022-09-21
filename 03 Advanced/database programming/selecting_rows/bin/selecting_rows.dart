import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/sqljocky.dart';

Future<void> main(List<String> arguments) async {
  // Here we define our database connection settings
  var pool = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'bryan',
    password: 'password',
    db: 'school',
  );

// we connect to the database
  var conn = await MySqlConnection.connect(pool);

// we execute a database query
  var results = await conn.execute('Select * from teachers');

  /// we print out the result
  print('Results ${await results.length} rows');
// we close our database connection
  conn.close();
  exit(0);
}
