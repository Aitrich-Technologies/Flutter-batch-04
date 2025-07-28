import 'package:flutter/material.dart';

class Signuppg extends StatelessWidget{
  Signuppg ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/signup.jpg',width: 550,height: 400,),
            ),
            SizedBox(height: 10.0),
            Text('Create Your Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Create an account so you can manage your personal finances.'),
            SizedBox(height: 20.0),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
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
                labelText: 'Enter Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
              ),
            ),
            ),
            SizedBox(height: 20.0),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              obscureText:true ,
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal:730,vertical: 20),
            ),
             child: Text('Signup',style: TextStyle(color: Colors.white),
             )
             ),
             SizedBox(height: 20.0),
             Text('Sign Up With'),
             SizedBox(height: 20.0),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook,size: 25),
                SizedBox(width: 20.0),
                Icon(Icons.g_mobiledata,size: 30),
                SizedBox(width: 20.0),
                Icon(Icons.apple,size: 30),
              ],
             ),
             SizedBox(height: 20.0),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Aleady have an Account?'),
                  TextButton(onPressed: (){},
              child: Text('Login')
              )
               ],
             ),
            
          ],
        ),
      ),

    );
  }
}