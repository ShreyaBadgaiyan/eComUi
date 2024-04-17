import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomui/bottomBAr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Image.asset('assets/images/Fluxstore_logo.png',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('assets/images/men.png'),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Men',
                        style: TextStyle(
                          fontSize: 12,
                        ),),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('assets/images/women.png'),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Women',
                          style: TextStyle(
                            fontSize: 12,
                          ),),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('assets/images/cloth.png'),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Clothing',
                          style: TextStyle(
                            fontSize: 12,
                          ),),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('assets/images/posters.png'),),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text('Posters',
                          style: TextStyle(
                            fontSize: 12,
                          ),),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: AssetImage('assets/images/music.png'),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Music',
                          style: TextStyle(
                            fontSize: 12,
                          ),),
                      ),
                    ],
                  ),
                ),
        
        
        
              ],
            ),
          ),
        
        
        //  BottomNavigationBar(items: ),
        
        
          CarouselSlider(
            items: [
        
                  Image.asset('assets/images/image4.png', fit: BoxFit.cover),
              Image.asset('assets/images/image5.png', fit: BoxFit.cover),
        
                ],
        
        
              //Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
             // Image.asset('assets/images/image3.jpg', fit: BoxFit.cover),
              // Add more images as required
        
            options: CarouselOptions(
              height: 200, // Adjust height as needed
              viewportFraction: 0.8, // Adjust viewport fraction
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3), // Adjust interval
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _controller,
          ),
        
          SizedBox(height: 20,),
        
          CarouselSlider(
            items: [
              Image.asset('assets/images/image3.png', fit: BoxFit.cover),
              Image.asset('assets/images/image2.png', fit: BoxFit.cover),

              //Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
              // Image.asset('assets/images/image3.jpg', fit: BoxFit.cover),
              // Add more images as required
            ],
            options: CarouselOptions(
              height: 200, // Adjust height as needed
              viewportFraction: 0.8, // Adjust viewport fraction
              enlargeCenterPage: true,
              autoPlay: false,
            //  autoPlayInterval: Duration(seconds: 3), // Adjust interval
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _controller,
          ),
        
          SizedBox(height: 20,),
        
          CarouselSlider(
            items: [
        
        
              Image.asset('assets/images/blueHoodie.png', fit: BoxFit.cover),
              //Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
              // Image.asset('assets/images/image3.jpg', fit: BoxFit.cover),
              // Add more images as required
            ],
            options: CarouselOptions(
              height: 200, // Adjust height as needed
              viewportFraction: 0.8, // Adjust viewport fraction
              enlargeCenterPage: true,
              //autoPlay: true,
             // autoPlayInterval: Duration(seconds: 3), // Adjust interval
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _controller,
          ),
        
        
        
        ],
                ),
      ),

     // bottomNavigationBar: NavigationMenu(),

    );
  }
}
