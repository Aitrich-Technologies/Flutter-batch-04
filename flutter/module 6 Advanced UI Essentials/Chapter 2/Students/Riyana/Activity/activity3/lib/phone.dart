import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class phonee extends StatefulWidget{
  phonee({super.key});
  @override
  State<StatefulWidget> createState() =>phones();
  }

class phones extends State<phonee>{
  final TextEditingController phonenumberController=TextEditingController();
  String? phonenumberError;
String? validatephonenumber(String phonenumber){
  if(!RegExp(r'^\d{10}$').hasMatch(phonenumber)){
    return 'Phone number must be exactly 10 digits';
  }
  return null;
}
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phonenumberController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  errorText: phonenumberError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    phonenumberError=validatephonenumber(value);
                  });
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                phonenumberError=validatephonenumber(phonenumberController.text);
              });
              if(phonenumberError==null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Submission Succesful!')));
              }
            }, child: Text('submit'))
          ],
        ),
      ),
    );
  }
}