import 'package:flutter/material.dart';

class Exce extends StatelessWidget{
  Exce({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Home'),
        centerTitle: true,
        actions: [Icon(Icons.search)
        ],
      ),
      body:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Promotions',style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 2.0),
         Image.asset('assets/frontpic.jpg',width: 550,height: 400,),
         SizedBox(height: 20.0),
        Expanded(child:
         GridView.count(
          crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10.0,padding: EdgeInsets.all(6.0),
          children: [
            Container(
              child: Image.asset('assets/1331.jpg',height: 100,width: 100, fit: BoxFit.cover),
            ),
            Container(
              child: Image.asset(' assets/lap2.png',height: 100,width: 100, fit: BoxFit.cover),
            ),
             Container(
              child: Image.asset('assets/2147875657.jpg',height: 100,width: 100, fit: BoxFit.cover),
            ),
             Container(
              child: Image.asset('assets/laptop.jpg',height: 100,width: 100, fit: BoxFit.cover),
            ),
          ],
          ),
          )

        

        ],
      ) ,


    );
  }
}