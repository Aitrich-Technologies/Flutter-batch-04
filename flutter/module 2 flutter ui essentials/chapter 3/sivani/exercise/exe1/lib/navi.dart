import 'package:flutter/material.dart';

class Navi extends StatelessWidget{
      Navi({super.key});

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Home'),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.notifications),onPressed: (){
          Navigator.pushNamed(context, '/notification');
        },
         )],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Image.asset('assets/bluee.jpg',width: 400,height: 400,),
              SizedBox(height: 10),
              Image.asset('assets/car.jpg',width: 400,height: 400,),
               SizedBox(height: 10),
              Image.asset('assets/white.jpg',width: 400,height: 400,),
            ],
          ),
        ),
      ),
    );
  }
}

class notification extends StatelessWidget{
      notification({super.key});

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
             SizedBox(height: 30.0),
              Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
             SizedBox(height: 30.0),
              Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
              SizedBox(height: 30.0),
              Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
             SizedBox(height: 30.0),
              Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
             SizedBox(height: 30.0),
              Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.person_pin_circle_outlined),
                   SizedBox(width: 50),
                  Text('Notifications'),
                  SizedBox(width: 300),
                  Icon(Icons.delete),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}