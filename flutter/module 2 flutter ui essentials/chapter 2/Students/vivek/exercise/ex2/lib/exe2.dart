import 'package:flutter/material.dart';

class Exe2 extends StatelessWidget {
  const Exe2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Promotions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Image.asset(
              'assets/phone.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Featured Products',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  _buildProductCard('assets/laptop.jpg', 'Product 1'),
                  _buildProductCard('assets/laptop.jpg', 'Product 2'),
                  _buildProductCard('assets/laptop.jpg', 'Product 3'),
                  _buildProductCard('assets/laptop.jpg', 'Product 4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(String imagePath, String title) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
