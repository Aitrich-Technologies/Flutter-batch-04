import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Validate extends StatefulWidget {
  Validate({super.key});

  @override
  State<StatefulWidget> createState() => _validate();
}

class _validate extends State<Validate> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  String? nameError;
  String? numError;
  String? pinError;
  String? selectedItem = 'Gender';

  String? validatename(String name) {
    if (RegExp(r'[^[a-zA-Z\s]+$').hasMatch(name)) {
      return 'Name is required';
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
    numController.dispose();
    pinController.dispose();
    super.dispose();
  }

  void _submit() {
    print("Username: ${nameController.text}");
    print("Phone Number: ${numController.text}");
    print("Pincode: ${pinController.text}");
  }

  void _clear() {
    setState(() {
      nameController.clear();
      numController.clear();
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
            controller: numController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            maxLength: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              counterText: " ",
              labelText: 'Phone Number',
              errorText: numError,
            ),
            onChanged: (value) {
              setState(() {
                numError = validatenum(value);
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
                      numError == null &&
                      pinError == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Register Succesfully")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please Fill the fields")),
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
                    numError = validatenum(numController.text);
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
