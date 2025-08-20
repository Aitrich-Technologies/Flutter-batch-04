import 'package:exedrawer/exe2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Exe2(),
        '/home': (context) => home(),
        '/profile': (context) => profile(),
        '/settings': (context) => settings(),
      },
    ),
  );
}
