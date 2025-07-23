import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: const Text('TabBar Example'),
          bottom: const TabBar(
            tabs: [
              Column(
                children: [
                  Tab(icon: Icon(Icons.home)),
                  Text('Home'),
                ],
              ),
              
              Column(
                children: [
                  Tab(icon: Icon(Icons.search)),
                  Text('Search'),
                ],
              ),
              
              Column(
                children: [
                  Tab(icon: Icon(Icons.person)),
                  Text('Search'),
                ],
              ),
               // Single tab with Home icon
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 24), // Centered text for the tab
              ),
            ),
            Center(
              child: Text(
                'Search',
                style: TextStyle(fontSize: 24), // Centered text for the tab
              ),
            ),
            Center(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 24), // Centered text for the tab
              ),
            ),
          ],
        ),
      ),
    );
  }
}
