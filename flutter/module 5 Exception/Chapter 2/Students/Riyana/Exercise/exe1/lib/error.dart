import 'package:flutter/material.dart';

class uierror extends StatelessWidget {
  uierror({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 50),

            Text(
              "Title",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.message, color: Colors.black),
                Flexible(
                  child: Text(
                    'Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor  incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipex ea commodo consequat.  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
