import 'package:exe2/namednav.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
   initialRoute: '/',
   routes: {
    '/':(context)=>Homepage(),
    '/notifications':(context)=>Mynotification(),
    '/profile':(context)=>Myprofile(),
   },
  ));
}