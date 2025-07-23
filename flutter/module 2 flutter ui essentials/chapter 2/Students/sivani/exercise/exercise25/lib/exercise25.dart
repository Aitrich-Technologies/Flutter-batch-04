import 'package:flutter/material.dart';

class Exercise25 extends StatelessWidget{
  Exercise25({super.key});

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
            child: Text('Promotions',
            style: TextStyle(
              fontWeight: FontWeight.bold),
              ),
          ),
          SizedBox(height: 2.0),
         Image.asset('assets/frontpic.jpg',
         
         width: 550,height: 400,),
         SizedBox(height: 20.0),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('Featured Products',
           style: TextStyle(fontSize: 20,
           fontWeight: FontWeight.bold),),
         ),
        Expanded(child:
         GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10.0,
          padding: EdgeInsets.all(6.0),
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset('assets/1331.jpg',
                  height: 160,width: 160, 
                  fit: BoxFit.cover),
                  Text('Product 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Image.asset('assets/14487.jpg',
                  height: 160,width: 160, 
                  fit: BoxFit.cover),
                  Text('Product 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),)
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Image.asset('assets/image.jpg',
                  height: 160,width: 160,
                   fit: BoxFit.cover),
                  Text('Product 3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),)
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Image.asset('assets/laptop.jpg',
                  height: 160,width: 160,
                   fit: BoxFit.cover),
                  Text('Product 4',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ],
          ),
          )
        ],
      ) ,
    );
  }
}