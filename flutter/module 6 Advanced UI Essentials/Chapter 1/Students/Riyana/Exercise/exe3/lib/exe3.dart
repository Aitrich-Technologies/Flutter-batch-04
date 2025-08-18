import 'package:flutter/material.dart';

class exe3 extends StatelessWidget{
  exe3({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Listview with End Drawer'),
      ),endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(decoration: BoxDecoration(color: Colors.blue),child: Column(
              children: [
                Text('End Drawer',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        
            ),Divider(),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        
            ),Divider(),
             ListTile(
              leading: Icon(Icons.help),
              title: Text('Help',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        
            ),Divider(),
            
        
          ],
        )
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Item 1'),
          ),Divider(),
           ListTile(
            title: Text('Item 2'),
          ),Divider(),
           ListTile(
            title: Text('Item 3'),
          ),Divider(),
           ListTile(
            title: Text('Item 4'),
          ),Divider(),
           ListTile(
            title: Text('Item 5'),
          ),Divider(),
           ListTile(
            title: Text('Item 6'),
          ),Divider(),
           ListTile(
            title: Text('Item 7'),
          ),Divider(),
           ListTile(
            title: Text('Item 8'),
          ),Divider(),
           ListTile(
            title: Text('Item 9'),
          ),Divider(),
           ListTile(
            title: Text('Item 10'),
          ),Divider(),
        ],
      ),
    );
  }
}