import 'package:try_catch_finally/try_catch_finally.dart' as try_catch_finally;

void main(List<String> arguments) {
  try {
    print(100 ~/
        0); // dividing by zero throws d IntegerDivisionByZeroException error
  } catch (e) {
    print(
        'An error occurred : ${e.toString()}'); // An error occurred : IntegerDivisionByZeroException
  } finally {
    print('Completed'); // Completed
  }

  print("===============================");

  // catching specific error
  try {
    print(100 ~/
        0); // dividing by zero throws d IntegerDivisionByZeroException error
  } on UnsupportedError {
    print('Sorry that is not supported');
  } catch (e) {
    print(
        'An error occurred : ${e.toString()}'); // An error occurred : IntegerDivisionByZeroException
  } finally {
    print('Completed'); // Completed
  }
}
