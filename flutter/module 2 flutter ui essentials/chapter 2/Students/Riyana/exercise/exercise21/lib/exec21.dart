import 'package:flutter/material.dart';
class Exer21 extends StatelessWidget{
  Exer21({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
        actions: [Icon(Icons.search)],
        centerTitle: true,

      ),
      body: 
      Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text('Promotions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 2,),
          
          Center(child: Image.asset('assets/first.jpg',height:300,width: 400,)),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Featured products',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Expanded(child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 20.0,crossAxisSpacing: 20.0,padding: EdgeInsets.all(16.0),
          children: [
            Container(
             
              child: Column(
                children: [
                  Image.asset('assets/hello.jpg',fit:BoxFit.cover ,),
                  Text('product 1',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              )
      
            ),
              Container(
             
              child: Column(
                children: [
                  Image.asset('assets/third.jpg',fit:BoxFit.cover ,),
                   Text('product 2',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

                ],
              )
      
            ),
              Container(
             
              child: Column(
                children: [
                  Image.asset('assets/lapimage.png',fit:BoxFit.cover ,),
                   Text('product 3',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              )
      
            ),
              Container(
             
              child: Column(
                children: [
                  Image.asset('assets/fourth.jpg',fit:BoxFit.cover ,),
                  Text('Product 4',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  
                  
                ],
              )
      
            ),
          ],),),
          
          
        ],
      ),
    );
  }
}