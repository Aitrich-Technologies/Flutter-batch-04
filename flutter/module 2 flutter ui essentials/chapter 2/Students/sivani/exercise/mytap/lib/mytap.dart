import 'package:flutter/material.dart';

class Mytap extends StatelessWidget{

  Mytap({super.key});

@override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
     child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text('Home'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.chat,color: Colors.white,)),
            Tab(icon: Icon(Icons.camera,color: Colors.white)),
            Tab(icon:Icon(Icons.settings,color: Colors.white)),
          ]
          ),
      ),
      body: TabBarView(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            // color: Colors.green,
            child: 
            Center(
              child: Text('Chat screen',style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            // color: Colors.amber,
            child: 
            Center(
               child: Text('Camera Screen',style: TextStyle(fontWeight: FontWeight.bold),
               ),
            ),
          ),
         Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.blueAccent,
          child: 
          Center(
            child: Text('Settings Screen',style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
         )
      ]
      ),
     )
     );
  }

}