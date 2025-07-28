import 'package:exe1/navi.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Navi(),
      '/notification': (context) => notification(),
    },
  ));
}