import 'package:flutter/material.dart';

class exe2 extends StatefulWidget{
  exe2({super.key});
  @override
  State<StatefulWidget> createState()=>_log(); 
}
class _log extends State<exe2>{
  bool isdarkthemeenabled=false;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: isdarkthemeenabled?ThemeData.dark():ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Contact Us'),
          leading: Icon(Icons.arrow_back),
          actions: [
            
            IconButton(onPressed: (){
              
              setState(() {
                isdarkthemeenabled=!isdarkthemeenabled;
               
              });
            
            }, icon: Icon(isdarkthemeenabled? Icons.dark_mode :Icons.light_mode))
          ],
      
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(
                  labelText: 'Name'
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(labelText: 'Email'),),
              ),
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(labelText: 'Message'),),
              ),
               SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){
                  
                }, child: Text('Submit')),
              ),
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Info'),
              ),
               SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.mail),
              ),
               SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.phone),
              ),
               SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.business),
              ),
                SizedBox(height: 70,),
              Container(width: 700,height: 500,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}