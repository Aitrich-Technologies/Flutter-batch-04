import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isMoved = false;
  bool _isLarge = false;

  void _togglePosition() {
    setState(() {
      _isMoved = !_isMoved;
      _isLarge = !_isLarge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("AnimatedPositioned Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _isMoved ? 200 : 50,
              top: _isMoved ? 400 : 50,
              child: GestureDetector(
                onTap: _togglePosition,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: _isLarge ? 150 : 100,
                  height: _isLarge ? 150 : 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Tap Me",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
