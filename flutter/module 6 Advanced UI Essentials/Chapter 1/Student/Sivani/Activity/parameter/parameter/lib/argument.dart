import 'package:flutter/material.dart';

class Argument extends StatefulWidget {
  Argument({super.key});

  @override
  State<StatefulWidget> createState() => _argument();
}

class _argument extends State<Argument> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent, title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: 'Enter name',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/name', arguments: name);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: Text(
              "Submit",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(title ?? 'name'),
        centerTitle: true,
      ),
    );
  }
}
