import 'package:flutter/material.dart';

class seller extends StatefulWidget{
  seller({super.key});

  @override
  State<seller> createState()=> SellerScreen();
}

class SellerScreen extends State<seller> {

  int _selectedValue = 0;

  bool isChecked = false;

  double _sliderValue = 10.0;


  // List of items for the dropdown
  final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];
  final bool _isChecked = false;
  final double _currentAge = 1; // Default age
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
          SizedBox(width: 12),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 60.0),
              Radio(
                value: 'Male', 
              groupValue: _selectedValue,
              
               onChanged: (value){}
               
               ),
               Text('Male'),
                  SizedBox(width: 150),
          Checkbox(
            value: isChecked, 
            onChanged: (bool? value){
              setState(() {
                isChecked = value ?? false;
              });
            }
            ),
            Text('Vaccinated'),
            ],
          ),
          SizedBox(height: 20.0),
          Center(child: Text('Pet Age')),
          SizedBox(height: 20.0),
          Slider(
            value: _sliderValue,
            min: 0.0,
            max: 100.0,
            divisions: 100,
            label: _sliderValue.toStringAsFixed(0), 
            onChanged: (double newValue){
              setState(() {
                _sliderValue = newValue;
              });
            }
            )
        

            ],
            
          
          
          
                
              ),
        ));
  }
}
