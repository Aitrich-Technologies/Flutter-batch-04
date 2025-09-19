import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  final CarouselController carousel1 = CarouselController();
  final CarouselController carousel2 = CarouselController();

  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Custom Carousel",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  autoPlay: auto,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  Image.network(
                    "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://st1.latestly.com/wp-content/uploads/2021/08/31-6.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://media.istockphoto.com/id/508030340/photo/sunny-cat.jpg?s=612x612&w=0&k=20&c=qkz-Mf32sbJnefRxpB7Fwpcxbp1fozYtJxbQoKvSeGM=",
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 1,
                autoPlay: auto,
                scrollDirection: Axis.vertical,
              ),
              items: [
                Image.network(
                  "https://www.shutterstock.com/image-photo/beautiful-golden-retriever-cute-puppy-600nw-2526542701.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://www.nylabone.com/-/media/project/oneweb/nylabone/images/dog101/activities-fun/10-great-small-dog-breeds/maltese-portrait.jpg?h=448&w=740&hash=B111F1998758CA0ED2442A4928D5105D",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://images.vetster.com/jsck_russell_terrier_pink_8fddb1c3f2.jpg",
                  fit: BoxFit.fill,
                )
              ],
            ),
            //Implement the vertical carousel here

            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            auto = !auto;
          });
        },
        child: const Icon(Icons.stop_sharp),
      ),
    );
  }
}
