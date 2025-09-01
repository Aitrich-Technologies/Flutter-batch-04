import 'package:flutter/material.dart';

class MyApp88 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp88> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? usernameError;
  String? passwordError;

  String? validateUsername(String username) {
    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(username)) {
      return 'Invalid Username (4- 12 characters, alphanumeric....)';
    }
    if (username.isEmpty) {
      return 'Username cannot be empty';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)|[A-Z]]').hasMatch(password)) {
      return 'Invalid Password (Atleast 8 characters, alphanumeric....)';
    }
    if (password.length < 8) {
      return 'Password must be atleast 8 Characters long';
    }
    return null;
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    // Perform submission logic here
    print("Username: ${nameController.text}");
    print("Password: ${passwordController.text}");
  }

  void _clear() {
    setState(() {
      nameController.clear();
      passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter TextField Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              CircleAvatar(radius: 80),
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                      errorText: usernameError),
                  onChanged: (value) {
                    setState(() {
                      usernameError = validateUsername(value);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      errorText: passwordError),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      passwordError = validatePassword(value);
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _submit();
                      if (usernameError == null && passwordError == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login succefully")));
                      } else if ((usernameError?.isNotEmpty ?? false) &&
                          (passwordError?.isNotEmpty ?? false)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please fill the fields")));
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: Text("Error"),
                                  content: Text("Please fill the Fields"),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'close');
                                        },
                                        child: Text("Close"))
                                  ],
                                ));
                      }
                    },
                    child: Text('Submit'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _clear();
                        usernameError = validateUsername(nameController.text);
                        passwordError =
                            validatePassword(passwordController.text);
                      });
                    },
                    child: Text('Clear'),
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