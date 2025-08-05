import 'dart:ffi';
import 'dart:io';

import 'package:exe1/exe1.dart' as exe1;

void main(List<String> arguments) {
  try {
    print('Enter a number:');
    String? x = stdin.readLineSync();
    int a = int.parse(x!);
    print('enter second:');
    int y = int.parse(stdin.readLineSync()!);
    int re = a ~/ y;
    print('$re');

    if (re < 5) {
      throwexc();
    }
  } on Exceptionhandling catch (e) {
    print(e.cause);
  } on FormatException {
    print('Format is incorrect');
  } on IntegerDivisionByZeroException {
    print('integerDivisionbyzero');
  }
}

void throwexc() {
  throw Exceptionhandling('result is lessthan 5');
}

class Exceptionhandling implements Exception {
  String cause;
  Exceptionhandling(this.cause);
}
