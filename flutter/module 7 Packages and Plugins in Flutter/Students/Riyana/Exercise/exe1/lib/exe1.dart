import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class exe1 extends StatefulWidget{
  exe1({super.key});
  @override
  State<StatefulWidget> createState() =>_exercisse1();
}
class _exercisse1 extends State<exe1>{
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.green,
    title: Text("Animals"),centerTitle: true,
  ),
  body: SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(color: Colors.teal),
          child:  Center(
           child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText('cat', textStyle: TextStyle(
                          fontSize: 30,
                        
                         ), colors:[ Colors.purple,Colors.yellow,Colors.red]),
                   ColorizeAnimatedText('Dog', textStyle: TextStyle(
                          fontSize: 30,
                         
                         ), colors: [ Colors.purple,Colors.yellow,Colors.red]),
                          ColorizeAnimatedText('Fish', textStyle: TextStyle(
                          fontSize: 30,
                        
                         ), colors:[ Colors.purple,Colors.yellow,Colors.red])
                
                ], isRepeatingAnimation: true,
             repeatForever: true,  
                
           )
                
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(color: Colors.orange),
          child:  Center(
           child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('Rabit',
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          )),
                  RotateAnimatedText('Snake',
                      textStyle: TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  RotateAnimatedText(
                    'Hamster',
                    textStyle: TextStyle(
                      fontSize: 30,
                     color: Colors.white
                    ),
                  ),
                ], isRepeatingAnimation: true,
                repeatForever: true,  
           ))),
             Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.blue),
          child:  Center(
           child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Camel',
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                         )),
                  ScaleAnimatedText('Cow',
                      textStyle: TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  ScaleAnimatedText(
                    'goat',
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ], isRepeatingAnimation: true,
                repeatForever: true,  
           ))),
             Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.brown),
          child:  Center(
           child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('white molly',
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                         )),
                  FadeAnimatedText('Black molly',
                      textStyle: TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  FadeAnimatedText(
                    'Guppy',
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ], isRepeatingAnimation: true,
                repeatForever: true,  
           ))),
             Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.blueGrey),
          child:  Center(
           child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Persian cat',
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          )),
                  TyperAnimatedText('Calico',
                      textStyle: TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  TyperAnimatedText(
                    'Siberian',
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ], isRepeatingAnimation: true,
                repeatForever: true,  
           )))
      ],
    ),
  ),
 );
  }
}

