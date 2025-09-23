import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class Contact extends StatefulWidget {
  Contact({super.key});
  @override
  State<StatefulWidget> createState()=>_con();
}

  class _con extends State<Contact>{
   final gmailUri = Uri.parse('https://workspace.google.com/intl/en-US/gmail/');  

 final locationUri = Uri.parse('https://www.google.com/maps/place/Thrissur,+Kerala');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.contact_mail), // Contact icon
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                      ),
                    ),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Message',
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to submit form
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Info",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),SizedBox(height: 80,),
                    ListTile(
                leading: IconButton(onPressed: (){
                  setState(() {
                    launchUrl(gmailUri, mode: LaunchMode.externalApplication,);
                  });
                }, icon: Icon(Icons.mail),
                color: const Color.fromARGB(255, 26, 27, 28),),
                title: Text('Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 14, 14, 14),
                ),),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: (){
                  setState(() {
                    launchUrlString('tel:9876541235');
                  });
                }, icon: Icon(Icons.call),
                color: const Color.fromARGB(255, 8, 8, 9),),
                title: Text('Call',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 12, 12, 13)
                ),),
              ),
              ListTile(
                leading: IconButton(onPressed: (){
                  setState(() {
                     launchUrl(locationUri , mode: LaunchMode.externalApplication,);
                  });
                }, icon: Icon(Icons.business),
                color: const Color.fromARGB(255, 14, 15, 15),),
                title: Text('Location',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 12, 12, 12)),),
              ),
                  
                  
                 
                
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }





}