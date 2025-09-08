import 'package:exercise4/logpg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => Logpg(), '/signup': (context) => signup()},
    ),
  );
}
