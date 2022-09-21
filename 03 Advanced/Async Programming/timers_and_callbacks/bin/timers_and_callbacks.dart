import 'dart:async';

int counter = 0;
void main(List<String> arguments) {
  Duration duration = Duration(seconds: 1);
  // Creates a new repeating timer.
  // duration => repeates every (passed duration)
  // and every time it runs, d callback function passed here is run
  Timer timer = Timer.periodic(duration, timeout);
  print('Started ${getTime()}');
}

//ds calls the prints d current DateTime gotten from d getTime() and increment d counter function..
// counter stops after 5 counts
void timeout(Timer timer) {
  print('Timeout: ${getTime()}');

  counter++;
  if (counter >= 5) {
    timer.cancel();
  }
}

// ds returns d current DateTime
String getTime() {
  DateTime time = DateTime.now();
  return time.toString();
}
