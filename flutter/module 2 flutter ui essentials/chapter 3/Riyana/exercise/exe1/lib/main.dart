import 'package:exe1/navig.dart';
import 'package:flutter/material.dart'  ;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context)=>Mynavigation(),
      '/notifications': (context)=>MYNotification(),


    },
   
  ));
}