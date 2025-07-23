import 'package:flutter/material.dart';
class Exelogin extends StatelessWidget{
  Exelogin({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          width:500,
          height: 500,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)

          ),
          
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Login',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){

              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              child: Text('Login',
              style: TextStyle(color: Colors.white),)),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,size: 50.0,color: Colors.blue,),
                  SizedBox(width: 50.0),
                  Icon(Icons.email,size: 50.0,color: Colors.red,),
                  SizedBox(width: 50.0,),
                  Icon(Icons.phone_android,size: 50.0),

                ],
              ),
              SizedBox(height: 20),
          
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Alredy have an account ',style: TextStyle(fontSize: 15),),
                    SizedBox(width: 10),
                     TextButton(onPressed: (){
                
                }, child: Text('Signup',style: TextStyle(color: Colors.red),))
                
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