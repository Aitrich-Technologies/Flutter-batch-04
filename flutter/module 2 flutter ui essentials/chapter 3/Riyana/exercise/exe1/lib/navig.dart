import 'package:flutter/material.dart';

class Mynavigation extends StatelessWidget{
  Mynavigation({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home',style: TextStyle(color: Colors.white,
        fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
         IconButton( icon: Icon(Icons.notifications),onPressed: (){
          Navigator.pushNamed(context, '/notifications');
          
         },
         color:Colors.white ,
         iconSize: 30,
         ),
        ],centerTitle: true,
      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/car1.png'),
            SizedBox(height: 20,),
            Image.asset('assets/cars.png'),
            SizedBox(height: 20,),
            Image.asset('assets/sportscar.jpg')
          ],
        ),
      ),
      
    );
  }
}

class MYNotification extends StatelessWidget{
  MYNotification({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Notifications',style: TextStyle(color: Colors.white,
        fontSize: 20,fontWeight: FontWeight.bold),),centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Card(
                color: Colors.yellow,
                elevation: 3,
                
                shape: RoundedRectangleBorder(
                  
                  
                  borderRadius: BorderRadius.circular(20,),
                  
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.person_pin_circle_outlined),
                    SizedBox(width: 30,),
                    Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 170,),
                    Icon(Icons.delete)
                  ],
                ),
                
              ),
              SizedBox(height: 30,),
               Card(
                color: Colors.yellow,
                
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                  Icon(Icons.person_pin_circle_outlined),
                    SizedBox(width: 20,),
                      Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 170,),
                    Icon(Icons.delete)
                  ],
                ),
                
              ),
              SizedBox(height: 30,),
               Card(
                color: Colors.yellow,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.person_pin_circle_outlined),
                    SizedBox(width: 20,),
                      Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 170,),
                    Icon(Icons.delete)
                  ],
                ),
                
              ),
              SizedBox(height: 30,),
               Card(
               color: Colors.yellow,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                Icon(Icons.person_pin_circle_outlined),
                    SizedBox(width: 20,),
                      Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 170,),
                    Icon(Icons.delete)
                  ],
                ),
                
              ),
              SizedBox(height: 30,),
               Card(
               color: Colors.yellow,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.person_pin_circle_outlined),
                    SizedBox(width: 20,),
                      Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 170,),
                    Icon(Icons.delete)
                  ],
                ),
                
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}