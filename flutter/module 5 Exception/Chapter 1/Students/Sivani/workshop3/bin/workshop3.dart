void main() {
  try {
    throw MyCustomException("This is a Custom Exception Message");
  } on MyCustomException catch (e) {
    print(e);
  }
}

class MyCustomException implements Exception {
  final String message;

  MyCustomException(this.message);

  @override
  String toString() {
    return 'MyCustomException: $message';
  }
}
