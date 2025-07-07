import 'package:flutter/material.dart';
class Exercise1 extends StatelessWidget{
  Exercise1({super.key});
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3, child:    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('home'),
        bottom: TabBar
        (tabs: [
          Tab(icon: Icon(Icons.chat),),
          Tab(icon: Icon(Icons.camera),),
          Tab(icon: Icon(Icons.settings),),

        ]),centerTitle:true ,
      ),
      body: TabBarView(children: [
        Container(
          color: Colors.teal, width: double.infinity,
          height: double.infinity,
          child: Center(child: Text('chat screen')),
        ),Container(
          color: Colors.blue, width: double.infinity,
          height: double.infinity,
          child: Center(child: Text('camera screen'),),
        ),Container(
          color: Colors.deepOrange, width: double.infinity,
          height: double.infinity,
          child:Center(child: Text('settings screen'),)
        )
      ]),
    ));
  }
}