import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workshop2/splashscreen.dart';
class Mysplash extends StatefulWidget{
  Mysplash({super.key});
  @override
  State<Mysplash> createState()=>  _Splashhome();
    // TODO: implement createState
    
  
}
class _Splashhome extends State<Mysplash>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(Duration(seconds:3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen (),)) );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      
      backgroundColor: Colors.purpleAccent,
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           FlutterLogo(size: 60,),
          SizedBox(height: 20,),
          Text('Splash Scrren',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),)],
        ),
      ),
    );
  }

}

 