import 'package:flutter/material.dart';

class exe1 extends StatelessWidget{
  exe1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Bottom Sheet Sample',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.message),text: 'Chats',),
           Tab(icon: Icon(Icons.call),text: 'Calls',),
            Tab(icon: Icon(Icons.settings),text: 'Settings',),
        ]),
      ),
     body: TabBarView(children: [
      Center(
        child: ElevatedButton(child: Text('ShowModelBottomSheet',
        style: TextStyle(fontSize: 20),),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,minimumSize: Size(70, 50)),onPressed: (){
          showModalBottomSheet<void>(context: context, builder: (BuildContext context){
            return Container(
              height: 100,
              color: Colors.amber,
            );
          });
        }, ),
      ),
      Center(child: Text('Calls Tab',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
       Center(child: Text('Settings Tab',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
     ]),
      
    ));
  }
}