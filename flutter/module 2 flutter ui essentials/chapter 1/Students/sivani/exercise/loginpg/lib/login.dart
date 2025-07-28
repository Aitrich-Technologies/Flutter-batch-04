import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LOGIN',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 35)),
              SizedBox(height: 50.0,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              ),
              SizedBox(height: 20.0),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffix: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
              shape: RoundedRectangleBorder
              (borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              ),
               child: Text('LOGIN',style: TextStyle(color: Colors.white),
               ),
               ),
               SizedBox(height: 50.0,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, size: 20.0,color: Colors.blue),
                    SizedBox(width: 20.0),
                    Icon(Icons.mail,size: 20.0,color: Colors.red),
                    SizedBox(width: 20.0),
                    Icon(Icons.phone,size: 20.0),
                  ],
                 ),
               ),
               SizedBox(height: 20.0),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Center(child: Text('Already have an Account')),
                   SizedBox(width: 5.0),
                   TextButton(onPressed: (){}, child: Text('Signup', style: TextStyle(color: Colors.red),
                   )
                   )
                 ],
               )
            ],
          ),
          
          ),
          
        
        ),
    );
   
  }
}