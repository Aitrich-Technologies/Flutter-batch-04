import 'dart:io';

import 'package:exe/exe.dart' as exe;

void main(List<String> arguments) {
  try {
    print('Enter the First :');
    String? x = stdin.readLineSync();
    int a = int.parse(x!);
    print('Enter the Second : ');
    int y = int.parse(stdin.readLineSync()!);
    var re = a ~/ y;
    print('$re');

    if (re < 5) {
      throwexc();
    }
  } on Exceptionhandling catch (e) {
    print(e.cause);
  } on FormatException {
    print('Format is incorrect');
  } on IntegerDivisionByZeroException catch (e) {
    print('IntegerDivisionbyZero');
  }
}

void throwexc() {
  throw Exceptionhandling('Result is less than 5');
}

class Exceptionhandling implements Exception {
  String cause;
  Exceptionhandling(this.cause);
}
