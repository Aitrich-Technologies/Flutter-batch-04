import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Exea extends StatefulWidget {
  Exea({super.key});

  @override
  State<StatefulWidget> createState() => ExeaState();
}

class ExeaState extends State<Exea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Animals'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 150,
              color: Colors.teal,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'CAT',
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                    ColorizeAnimatedText(
                      'DOG',
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                    ColorizeAnimatedText(
                      'FISH',
                      textStyle: TextStyle(fontSize: 30),
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 150,
              color: Colors.orange,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      'RABBIT',
                      textStyle: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    RotateAnimatedText(
                      'SNAKE',
                      textStyle: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    RotateAnimatedText(
                      'HAMSTER',
                      textStyle: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 150,
              color: Colors.blue,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText(
                      'CAMEL',
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    ScaleAnimatedText(
                      'COW',
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    ScaleAnimatedText(
                      'GOAT',
                      textStyle: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 150,
              color: Colors.brown,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'WHITE MOLLY',
                      textStyle: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    FadeAnimatedText(
                      'BLACK MOLY',
                      textStyle: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    FadeAnimatedText(
                      'GUPPY',
                      textStyle: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 150,
              color: Colors.blueGrey,
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'PERSIAN CAT',
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TyperAnimatedText(
                      'CALICO',
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TyperAnimatedText(
                      'SIBERIAN CAT',
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    TyperAnimatedText(
                      'AMERICAN CURL',
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
