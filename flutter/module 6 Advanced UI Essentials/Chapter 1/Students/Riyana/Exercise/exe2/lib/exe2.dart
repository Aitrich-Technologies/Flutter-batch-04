import 'package:flutter/material.dart';

class exe2 extends StatelessWidget{
  exe2({super.key});
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('HOME'),centerTitle: true,
      ),drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('Drawer Header',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),decoration: BoxDecoration(color: Colors.amber),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context);
              },
            ),Divider(),
             ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              onTap: () {
               Navigator.pushNamed(context, '/profile') ;
              },
            ),Divider(),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
                
              },
            ),Divider(),
          ],
        ),
      ),
      body: Center(child: Text('Home Page',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
    );

  }  
  }

  class profile extends StatelessWidget{
    profile({super.key});
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Profile'),centerTitle: true,
      ),
      body: Center(
        child: Text('Profile Page',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
    );
  }
  }

    class settings extends StatelessWidget{
    settings({super.key});
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Settings'),centerTitle: true,
      ),
      body: Center(
        child: Text('Settings Page',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
    );
  }
  }