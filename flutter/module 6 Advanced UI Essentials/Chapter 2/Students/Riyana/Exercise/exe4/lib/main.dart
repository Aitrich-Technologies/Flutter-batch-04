import 'package:exe4/exe4.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>exe4(),
      '/signup1':(context)=>sign()
    },
  ));
}