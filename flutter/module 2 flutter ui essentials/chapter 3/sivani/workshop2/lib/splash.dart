import 'dart:async';

import 'package:flutter/material.dart';
import 'package:workshop2/splashscreen.dart';

class Splash extends StatefulWidget{
      Splash({super.key});

      @override
  State<Splash> createState() => _Splashstate();

}
class _Splashstate extends State<Splash>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()
    )
    )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          FlutterLogo(size: 100),
            SizedBox(height: 15),
            Text('Splash Screen',style: TextStyle( color:Colors.white,fontSize:30,fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}


   
  
