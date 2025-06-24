import 'package:flutter/material.dart';
class Exlog extends StatelessWidget{
  Exlog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple,
      body: Center(
        child:Container(
          width: 400,
          height: 600,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(12),
                      ),
       child:Column(children: [
        Text("LOGIN",style: TextStyle(color: Colors.green,fontSize: 30),
        
        ),SizedBox(height: 70.0),
        
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'usename',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),SizedBox(height: 20.0),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          ),
        ),),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: () {
          print('button pressed');
          
        },style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),

          ),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ), child: Text(
          'login',
          style: TextStyle(color: Colors.white),
        ),
        ),SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Icon(Icons.facebook, size: 50.0,),
            SizedBox(width: 60.0,),
            Icon(Icons.email, size: 50.0,),
            SizedBox(width: 60.0,),
            Icon(Icons.share_rounded, size: 50.0,),
          ],
        ),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account",
              style:TextStyle(
                color: Colors.black, fontSize: 15,
                fontWeight: FontWeight.bold,
            
              ),
              
              
            ),TextButton(onPressed: () {
              print('textbutton pressed');
            }, child: Text('signup',style: TextStyle(color: Colors.red),),),
          ],
        ),
        
       ],) , )

      ),
    );
  }
}