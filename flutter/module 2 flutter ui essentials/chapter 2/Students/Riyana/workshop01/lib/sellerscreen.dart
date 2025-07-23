import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget{
  SellerScreen({super.key});
  @override
  State<SellerScreen> createState()=> _Sellerscreenstate(); 
    // TODO: implement createState
  
  }
class _Sellerscreenstate extends State<SellerScreen>{
   // List of items for the dropdown
 final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];

  String _selectedgender='Male';
   bool _isvaccinated = false;
   double _currentAge = 1; // Default age
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          Container(
            child: Image.asset(
              'assets/catpost.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pet Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              isExpanded: true,
              hint: const Text("Breed"),
              onChanged: (String) {},
              items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Radio<String>(value: 'Male', groupValue: _selectedgender, onChanged: (value){
                setState(() {
                  _selectedgender=value!;
                });
              },),
              Text('Male'),
              SizedBox(width: 100,),
              Checkbox(value: _isvaccinated, onChanged: (value){
                setState(() {
                  _isvaccinated=value!;
                });
              },),
              Text('vaccinated'),
            ],
          ),),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Text('Pet Age'),
              Slider(value: _currentAge,min: 0.0,max: 100.0,divisions: 100,label:_currentAge.toStringAsFixed(0), onChanged: (double newvalue){
                setState(() {
                  _currentAge=newvalue;
                });
              })
            ],
          ),
          )
           ],
              ),
        ));
  }



  }





