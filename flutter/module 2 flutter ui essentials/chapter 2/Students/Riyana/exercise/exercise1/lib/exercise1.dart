import 'package:flutter/material.dart';
class Exercise1 extends StatelessWidget{
  Exercise1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('HOME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.chat),),
            Tab(icon: Icon(Icons.camera),),
            Tab(icon: Icon(Icons.settings),),

        ],),
        centerTitle: true,
      ),backgroundColor: Colors.blue,
      body: TabBarView(children: [
        
        Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.redAccent,
              child: const Center(child:
               Text('Chat Screen', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.green,
              child: const Center(child: 
              Text('Camera Screen', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
            ),
             Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              child: const Center(child:
               Text('Settings Screen', 
               style: TextStyle(color: Colors.white,
               fontSize: 30,fontWeight: FontWeight.bold,))),
            ),
        
      ]),

    ));
  }
}