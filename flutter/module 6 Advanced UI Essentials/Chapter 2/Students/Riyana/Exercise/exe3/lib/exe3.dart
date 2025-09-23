import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class exe3 extends StatefulWidget {
  exe3({super.key});

  @override
  State<StatefulWidget> createState() => _login();
}

class _login extends State<exe3> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  String? nameError;
  String? phoneError;
  String? pinError;
  String? selectedItem = 'Gender';

  String? validatename(String name) {
    if (RegExp(r'[^[a-zA-Z\s]+$').hasMatch(name)) {
      return 'Name is required only  contain letters';
    }
    return null;
  }

  String? validatenum(String num) {
    if (!RegExp(r'^\d{10}$').hasMatch(num)) {
      return 'Phone Number is required';
    }
    return null;
  }

  String? validatepin(String pin) {
    if (!RegExp(r'^\d{6}$').hasMatch(pin)) {
      return 'Pincode is required';
    }
    return null;
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    pinController.dispose();
    super.dispose();
  }

  void _submit() {
   
    print("Username: ${nameController.text}");
    print("Phone Number: ${phoneController.text}");
    print("Pincode: ${pinController.text}");
  }

  void _clear() {
    setState(() {
      nameController.clear();
      phoneController.clear();
      pinController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Simple Interes Calculator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 60,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Name',
              errorText: nameError,
            ),
            onChanged: (value) {
              setState(() {
                nameError = validatename(value);
              });
            },
          ),
          SizedBox(height: 20),
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            maxLength: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Phone Number',
              errorText: phoneError,
            ),
            onChanged: (value) {
              setState(() {
                phoneError = validatenum(value);
              });
            },
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: pinController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: 'Pincode',
                    errorText: pinError,
                  ),
                  onChanged: (value) {
                    setState(() {
                      pinError = validatepin(value);
                    });
                  },
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: DropdownButton(
                  value: selectedItem,
                  items: ['Gender', 'Male', 'Female']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedItem = newValue;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _submit();
                  if (nameError == null &&
                      phoneError == null &&
                      pinError == null&& nameController.text.isNotEmpty &&
    phoneController.text.isNotEmpty &&
    pinController.text.isNotEmpty) {

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Register successfully")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill the fields")),
                    );
                  }
                },
                child: Text('Register'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _clear();
                    nameError = validatename(nameController.text);
                    phoneError = validatenum(phoneController.text);
                    pinError = validatepin(pinController.text);
                  });
                },
                child: Text('Clear'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}