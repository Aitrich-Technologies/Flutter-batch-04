
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class exe1 extends StatefulWidget {
  exe1({super.key});
  @override
  State<StatefulWidget> createState() => _exercie2();
}

class _exercie2 extends State<exe1> {
 final CarouselSliderController carousel1 = CarouselSliderController();
  final CarouselSliderController carousel2 = CarouselSliderController();
  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Image Carousel", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
             
              carousel1.previousPage();
              carousel2.previousPage();
            },
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
            carousel1.nextPage();
              carousel2.nextPage();
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: CarouselSlider(
               carouselController: carousel1,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 1,
                  autoPlay: auto,
                  scrollDirection: Axis.vertical,
                ),
                items: [
                  Image.network(
                    "https://static.vecteezy.com/system/resources/thumbnails/053/733/179/small_2x/every-detail-of-a-sleek-modern-car-captured-in-close-up-photo.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://www.carpro.com/hubfs/2023-Chevrolet-Corvette-Z06-credit-chevrolet.jpeg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://static.toiimg.com/photo/80387978.cms",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            CarouselSlider(
             carouselController: carousel2,
              items: [
                Image.network(
                  "https://images.unsplash.com/photo-1449426468159-d96dbf08f19f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bW90b3JiaWtlfGVufDB8fDB8fHww",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/17/d3/02/17d302ab12f808899fc2717897b26e46.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/27/f8/3a/27f83a1a4952e167b728d00e2a3f0e30.jpg",
                  fit: BoxFit.fill,
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2,
                autoPlay: auto,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            auto = !auto;
          });
        },
        child: Icon(auto ? Icons.pause : Icons.play_arrow_outlined),
      ),
    );
    }
  }


