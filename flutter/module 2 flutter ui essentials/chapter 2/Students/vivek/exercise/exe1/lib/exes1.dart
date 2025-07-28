import 'package:flutter/material.dart';
class Exes1 extends StatelessWidget {
  Exes1({super.key});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('home',style: TextStyle(color: Colors.blue,
        fontSize: 20,fontWeight:FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/notification');
          },
          color: Colors.white10,
          iconSize: 30,
           icon: Icon(Icons.notifications),
           ), 
          

        ],centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset(' assets/3993591_84522.jpg'),
            SizedBox(height: 20,),
            Image.asset('assets/car.jpg'),
            SizedBox(height: 20,),
            Image.asset(' assets/car3.jpg'),
          ],
        ),
      ),
    );
  }
  
  }
  

