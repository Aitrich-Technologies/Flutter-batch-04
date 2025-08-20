import 'package:flutter/material.dart';

class Settin extends StatelessWidget {
  Settin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell),
            title: Text("Mobile Network"),
            subtitle: Text("Manage Network Settings"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.blur_circular_sharp),
            title: Text("Language"),
            subtitle: Text("Change App Language"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.palette_rounded),
            title: Text("Theme"),
            subtitle: Text("Choose light or dark theme"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("Sound & Vibration"),
            subtitle: Text("Adjust Sound and Vibration Settings"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("More Settings"),
            subtitle: Text("Additional Settings Options"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
