import 'package:flutter/material.dart';
class Homepage extends StatelessWidget{
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Home Page'),
        centerTitle: true,

      ),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 250,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/notifications');
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20)
            ),
             child: Text('Notification',style: TextStyle(fontSize: 15,color: Colors.white),)),
             
             SizedBox(height: 80,),
             ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/profile');
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20)
            ),
             child: Text('profile',style: TextStyle(fontSize: 15,color: Colors.white),)),

          ],
        ),
      ),
    );
  }
}

class Mynotification extends StatelessWidget{
  Mynotification({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Notification'),
        centerTitle: true,

      ),
      body: Center(
        child:ElevatedButton(onPressed: (){
          Navigator.pop(context);

        },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20)
            ), child: Text('Back to home page',style: TextStyle(fontSize: 15,color: Colors.white),)) ,
      ),

    );
  }
}

class Myprofile extends StatelessWidget{
  Myprofile({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Profile'),
        centerTitle: true,

      ),
      body: Center(
        child:ElevatedButton(onPressed: (){
          Navigator.pop(context);

        },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20)
            ), child: Text('Back to home page',style: TextStyle(fontSize: 15,color: Colors.white),)) ,
      ),

    );
  }
}