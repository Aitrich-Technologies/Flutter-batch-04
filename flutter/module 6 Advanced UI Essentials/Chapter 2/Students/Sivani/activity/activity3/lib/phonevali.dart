import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Phonevali extends StatefulWidget {
  Phonevali({super.key});

  @override
  State<Phonevali> createState() => _Phonevali();
}

class _Phonevali extends State<Phonevali> {
  final TextEditingController phoneNumberController = TextEditingController();

  String? phoneNumberError;

  String? validatePhoneNumber(String phoneNumber) {
    if (!RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
      return 'Phone Number must be exactly 10 digits';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  errorText: phoneNumberError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    phoneNumberError = validatePhoneNumber(value);
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  phoneNumberError = validatePhoneNumber(
                    phoneNumberController.text,
                  );
                });
                if (phoneNumberError == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Submission Successfull')),
                  );
                }
              },
              child: Text('Submit '),
            ),
          ],
        ),
      ),
    );
  }
}
