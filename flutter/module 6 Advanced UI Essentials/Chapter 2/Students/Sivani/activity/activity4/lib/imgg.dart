import 'package:flutter/material.dart';

class Imgg extends StatelessWidget {
  Imgg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Image'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 450,
          child: Image.network(
            'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
          ),
        ),
      ),
    );
  }
}
