import 'package:flutter/material.dart';

class Darkk extends StatefulWidget {
  Darkk({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _darkk();
}

class _darkk extends State<Darkk> {
  bool isDarkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 239, 184, 21),
          title: Text('Contact US'),
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(
              icon: Icon(
                isDarkThemeEnabled ? Icons.dark_mode : Icons.light_mode,
              ),
              onPressed: () {
                setState(() {
                  isDarkThemeEnabled = !isDarkThemeEnabled;
                });
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(labelText: 'Name')),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: 'Message')),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 30),
            Text('Info'),
            SizedBox(height: 40),
            Icon(Icons.mail),
            SizedBox(height: 40),
            Icon(Icons.phone),
            SizedBox(height: 40),
            Icon(Icons.business),
            SizedBox(height: 90),
            Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
                height: 170,
                width: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
