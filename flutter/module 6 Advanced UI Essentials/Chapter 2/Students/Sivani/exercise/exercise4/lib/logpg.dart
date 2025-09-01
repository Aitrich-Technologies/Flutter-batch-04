import 'package:flutter/material.dart';

class Logpg extends StatefulWidget {
  Logpg({super.key});

  @override
  State<StatefulWidget> createState() => login();
}

class login extends State<Logpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 71, 124),
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 200,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3bXxKDPP4ADJvZZjgXO5ED-JDihwEXcTcWQ&s',
              ),
            ),
          ),
          Text('Happy Bear'),
          SizedBox(height: 5),
          Text('Baby Clothes'),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Login with Email',
              prefixIcon: Icon(Icons.mail),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.greenAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Login with FaceBook',
              prefixIcon: Icon(Icons.facebook),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Did not Have an Account?'),
              SizedBox(width: 5),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text('By continue you agree to our '),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {},
            child: Text(
              'Terms & Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<StatefulWidget> createState() => _signup();
}

class _signup extends State<signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController pswcontroller = TextEditingController();

  String? emailerror;
  String? pswerror;

  String? validateemail(String email) {
    if (email.isEmpty) {
      return 'fill the email';
    }
    if (!RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email)) {
      return 'Email Id shoud be specific & must conatin @ symbol';
    }
    return null;
  }

  String? validatepsw(String psw) {
    if (psw.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 71, 124),
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 250,
                height: 200,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3bXxKDPP4ADJvZZjgXO5ED-JDihwEXcTcWQ&s',
                ),
              ),
            ),
            Text('Happy Bear'),
            SizedBox(height: 5),
            Text('Baby Clothes'),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 236, 124, 159),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                errorText: emailerror,
                labelText: 'Email',
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: pswcontroller,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 99, 224, 104),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                errorText: pswerror,
                labelText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 206, 152, 133),
              ),
              onPressed: () {
                setState(() {
                  emailerror = validateemail(emailcontroller.text);
                  pswerror = validatepsw(pswcontroller.text);
                  if (emailerror == null && pswerror == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Successfully')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill the fields')),
                    );
                  }
                });
              },
              child: Text(
                'Login with Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 60),
            Text('Forgot Password?'),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                'Click Here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_outlined, color: Colors.redAccent),
                SizedBox(width: 5),
                Icon(Icons.settings, color: Colors.blue),
                Icon(Icons.mail, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
