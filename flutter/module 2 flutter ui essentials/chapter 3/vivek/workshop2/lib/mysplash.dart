import 'dart:async';
import 'package:flutter/material.dart';
import 'package:workshop2/splashscreen.dart';
class Mysplash extends StatefulWidget{
  Mysplash({super.key});
  @override
  State<Mysplash> createState()=> _splashhome(); 

  }
class  _splashhome extends State<Mysplash>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())) );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 50,),
            Text('splsh screen'),
          ],
        ),
      ),
    );
  }
}