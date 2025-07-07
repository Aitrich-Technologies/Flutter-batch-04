import 'package:flutter/material.dart';
class Sellerscreen extends StatefulWidget{
  Sellerscreen({super.key});
  @override
  State<Sellerscreen> createState()=> Seller(); 
    
  }
class Seller extends State<Sellerscreen> {
  int _selectedvalue = 0;
   bool isChecked = false;
   double _slidervalue = 10.0;

   final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];
  final bool _isChecked = false;
   double _currentAge = 1; // Default age
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
              hintText: 'Pet Nmae',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:60.0),
                  Radio(
                  value:'male', 
                   groupValue: _selectedvalue,
                    onChanged: (value){}
                    ),
                    Text('male'),
                    SizedBox(width: 150),
            Checkbox(value: isChecked,
             onChanged: (bool? value){
              setState(() {
                isChecked =value ?? false;
              });
             }),
             Text('vaccinated'),
                ],
              ),
              SizedBox(height: 20.0),
              Center(child: Text('pet age')),
              SizedBox(height: 20.0),
              Slider(
                value: _slidervalue,
                min: 0.0,
                max: 100.0,
                divisions: 100,
                label: _slidervalue.toStringAsFixed(0),
                onChanged: (double newValue){
                  setState(() {
                    
                  });
                },
              ),
           
      ],
    ));
  }
}


  // List of items for the dropdown
  

