import 'package:flutter/material.dart';

class exe4 extends StatefulWidget{
  exe4({super.key});
  @override
  State<StatefulWidget> createState()=>home();
}
class home extends State<exe4>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 229, 130, 123),
      title: Text('Home'),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network("https://cdn.igp.com/f_auto,q_auto,t_pnopt19prodlp/products/p-teddy-bear-10-inches--39360-m.jpg"),
            SizedBox(height: 20,),
            Text('HAPPY BEAR'),
            SizedBox(height: 10,),
            Text("BABY'S CLOTHES"),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.blueAccent,labelText: 'Login With Email',prefixIcon: Icon(Icons.email),border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 106, 179, 144),minimumSize: Size(100, 50)
              ),child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.facebook),SizedBox(width: 5,),Text('Login With FaceBook')],
              )),
            ),
SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Did not have an account ?'),
                TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => sign()),
    );
  },
  child: Text('Signup'),
)

              ],
            ),
            Text('By Continue you agree to our'),
            TextButton(onPressed: (){}, child: Text('Terms & Privacy Policy')),


          ],
        ),
      ),
      
    );
  }
}


class sign extends StatefulWidget {
  sign({super.key});
  @override
  State<StatefulWidget> createState() => _signup();
}

class _signup extends State<sign> {
  final _formkey = GlobalKey<FormState>();

  // controllers should be class-level, not inside build
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  String? nameerror;
  String? emailerror;
  String? passworderror;

  String? validatename(String name) {
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(name)) {
      return 'Name must contain letters';
    }
    return null;
  }

  String? validateemail(String email) {
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Email must be valid & contain @';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  void submit() {
    print("Username: ${namecontroller.text}");
    print("Email: ${emailcontroller.text}");
    print("Password: ${passwordcontroller.text}");
  }

  void clear() {
    setState(() {
      namecontroller.clear();
      emailcontroller.clear();
      passwordcontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 97, 86),
        title: Text('SIGNUP'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Text('Signup on Bear'),
              SizedBox(height: 20),
              Image.network(
                  "https://cdn.igp.com/f_auto,q_auto,t_pnopt19prodlp/products/p-teddy-bear-10-inches--39360-m.jpg"),
              SizedBox(height: 20),
              Text('HAPPY BEAR'),
              SizedBox(height: 10),
              Text("BABY'S CLOTHES"),
              SizedBox(height: 20),

              /// Name
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 219, 135, 135),
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorText: nameerror,
                ),
                onChanged: (value) {
                  setState(() {
                    nameerror = validatename(value);
                  });
                },
              ),
              SizedBox(height: 10),

              /// Email
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 119, 138, 222),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorText: emailerror,
                ),
                onChanged: (value) {
                  setState(() {
                    emailerror = validateemail(value);
                  });
                },
              ),
              SizedBox(height: 10),

              /// Password
              TextFormField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 119, 222, 195),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorText: passworderror,
                ),
                onChanged: (value) {
                  setState(() {
                    passworderror = validatePassword(value);
                  });
                },
              ),
              SizedBox(height: 10),

              /// Button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    submit();
                    if (nameerror == null &&
                        emailerror == null &&
                        passworderror == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Register Successfully")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Fill the fields")),
                      );
                    }
                  });
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text('LOGIN WITH EMAIL'),
              ),
              SizedBox(height: 20),

              /// Forgot Password
              Row(
                children: [
                  Text('Forgot Password ?'),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text('Click Here'),
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
