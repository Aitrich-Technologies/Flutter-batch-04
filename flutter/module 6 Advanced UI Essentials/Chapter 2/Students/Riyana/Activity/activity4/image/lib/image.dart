import 'package:flutter/material.dart';

class image extends StatelessWidget{
  image({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("cat"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 450,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4aBhloyMLx5qA6G6wSEi0s9AvDu1r7utrbQ&s"),
        ),
      ),
    );
  }
}