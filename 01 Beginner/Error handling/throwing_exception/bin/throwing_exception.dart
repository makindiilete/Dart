import 'dart:io';

import 'package:throwing_exception/throwing_exception.dart'
    as throwing_exception;

void main(List<String> arguments) {
  try {
    int divisor = 0;
    int number = 100;
    if (divisor == 0) {
      throw UnsupportedError('You cannot divide by zero');
    }
  } on UnsupportedError {
    print('Divisor cannot be zero');
  } catch (e) {
    print('Unknown error ${e.toString()}');
  } finally {
    print('completed');
  }

  /* 
  Assignment

  Ask the user for an age, if the age is less than 18, throw an Exception of "too young".  If the age is over 99 throw an Exception of "too old". Catch the Exception and use a catch all. Also split these tasks up into different functions.
   */

  print("==============**********");
  try {
    print('Enter your age \r\n');
    String? age = stdin.readLineSync();
    if (int.tryParse(age!) != null) {
      var ageInInt = int.tryParse(age);
      if (ageInInt != null && ageInInt < 18) {
        throw Exception('Too young');
      }
      if (ageInInt != null && ageInInt > 99) {
        throw Exception('Too old');
      }
    }

  } catch (e) {
    print('An error occurred ${e.toString()}');
  }
}
