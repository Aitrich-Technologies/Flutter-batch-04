import 'package:flutter/material.dart';

class Exeend extends StatelessWidget {
  Exeend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview with Enddrawer")),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Drawer Header')],
              ),
            ),
            ListTile(leading: Icon(Icons.person_pin), title: Text("Account")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.help), title: Text("Help")),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(title: Text("Item")),
          ListTile(title: Text("Item 1")),
          ListTile(title: Text("Item 2")),
          ListTile(title: Text("Item 3")),
          ListTile(title: Text("Item 4")),
          ListTile(title: Text("Item 5")),
          ListTile(title: Text("Item 6")),
          ListTile(title: Text("Item 7")),
          ListTile(title: Text("Item 8")),
          ListTile(title: Text("Item 9")),
          ListTile(title: Text("Item 10")),
        ],
      ),
    );
  }
}
