import 'package:flutter/material.dart';
class Exeregister extends StatelessWidget{
  Exeregister({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          SizedBox(height: 30),
          Center(
            
            child: Image.asset('assets/register.jpg',width: 250,height: 250),
          ),
          
          SizedBox(height: 10),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Create Your Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text('create an account so you can manage your ',style:TextStyle(fontSize: 15),textAlign:  TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text('personal finances',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            
              decoration: InputDecoration(
                labelText: 'Enter Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
            
              decoration: InputDecoration(
                labelText: 'Enter password',
                suffix: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(onPressed: (){
            
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 150,vertical: 20)
            ), child: Text('Signup',style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 10),
          Center(child: Text('sign Up With')),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook,size: 30),
              SizedBox(width: 20),
              Icon(Icons.g_mobiledata,size: 30),
              SizedBox(width: 20),
              Icon(Icons.apple,size: 30),
              
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Alredy Have An Account ?'),
              SizedBox(width: 20),
          TextButton(onPressed: (){

          }, child: Text('login'))
            ],
          ),
          

        ],
        

      ) ,


      

    );
  }
}