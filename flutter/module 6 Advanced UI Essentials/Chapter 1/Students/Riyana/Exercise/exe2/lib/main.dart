import 'package:exe2/exe2.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=>exe2(),
      '/profile':(context)=>profile(),
      '/settings':(context)=>settings()
    }
  ));
}