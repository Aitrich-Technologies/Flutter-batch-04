import 'package:flutter/material.dart';

class Myprefix extends StatelessWidget {
  Myprefix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Prefix & Suffix Icon"),
        centerTitle: true,
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            prefixIcon: Icon(Icons.mail),
            hint: Text("Enter Text"),
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
        ),
      ),
    );
  }
}
