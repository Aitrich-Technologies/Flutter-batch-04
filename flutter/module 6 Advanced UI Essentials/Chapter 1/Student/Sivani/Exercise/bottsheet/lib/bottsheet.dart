import 'package:flutter/material.dart';

class Bottsheet extends StatelessWidget {
  Bottsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Bottom Sheet Sample"),
          bottom: const TabBar(
            tabs: [
              Column(
                children: [
                  Tab(icon: Icon(Icons.message)),
                  Text('Chat'),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.call)),
                  Text('Call'),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.settings)),
                  Text('Settings'),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                child: Text("ShowModalBottomSheet"),
                onPressed: () {
                  style:
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(height: 200, color: Colors.amber);
                    },
                  );
                },
              ),
            ),
            Center(child: Text('Call Tab', style: TextStyle(fontSize: 24))),
            Center(child: Text('Setting Tab', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
