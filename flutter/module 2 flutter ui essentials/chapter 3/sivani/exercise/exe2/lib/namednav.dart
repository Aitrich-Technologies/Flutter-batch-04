import 'package:flutter/material.dart';

class Namednav extends StatelessWidget{
      Namednav({super.key});

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/notification');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15)
            ),
             child: Text('Notification')
             ),
             SizedBox(height: 80),
             ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/profile');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15)
            ),
             child: Text('Profile')
             ),
          ],
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
        backgroundColor: Colors.pink[100],
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
           MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15)
            ),
             child: Text('Back to Home Page')
             ),
          ],
        ),
      ),
    );
  }
}


class Profile extends StatelessWidget{
      Profile({super.key});

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
         Colors.lightGreenAccent[100],
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
           MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,vertical: 15)
            ),
             child: Text('Back to Home Page')
             ),
          ],
        ),
      ),
    );
  }
}

