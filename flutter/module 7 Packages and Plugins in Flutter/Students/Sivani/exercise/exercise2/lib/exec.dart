import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Exec extends StatefulWidget {
  Exec({super.key});

  @override
  State<StatefulWidget> createState() => ExecState();
}

class ExecState extends State<Exec> {
  final CarouselSliderController carousel1 = CarouselSliderController();
  final CarouselSliderController carousel2 = CarouselSliderController();

  bool auto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Carousel'),
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
                  aspectRatio: 2,
                  autoPlay: auto,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  Image.network(
                    "https://cdni.autocarindia.com/Features/_New%20Sedans%20%20Sports%20Cars%20Web%20Resized%20%20Watermarked._008.jpeg",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://www.stratstone.com/-/media/stratstone/blog/2024/top-10-best-supercars-of-2024/mclaren-750s-driving-dynamic-hero-1920x774px.ashx",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://img.freepik.com/free-photo/3d-car-with-simple-background_23-2150796882.jpg?semt=ais_incoming&w=740&q=80",
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    "https://www.autoshippers.co.uk/blog/wp-content/uploads/bugatti-centodieci.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            CarouselSlider(
              carouselController: carousel2,
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 1,
                autoPlay: auto,
                scrollDirection: Axis.vertical,
              ),
              items: [
                Image.network(
                  "https://samstoy.in/cdn/shop/files/battery-operated-bike-ahmedabad-gujarat-red-bike-white-details-studio.png?v=1752299116&width=1445",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://www.patoys.in/cdn/shop/files/patoys-r9-rechargeable-pl-6655-12v-battery-operated-ride-on-bike-for-kids-1-to-6-years-308229.jpg?v=1742744333",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://5.imimg.com/data5/PL/BO/GLADMIN-32478687/fzs-fi-500x500.png",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://imgd.aeplcdn.com/664x374/n/lwasnfb_1825021.jpg?q=80",
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            auto = !auto;
          });
        },
        child: Icon(auto ? Icons.play_arrow : Icons.pause),
      ),
    );
  }
}
