import 'package:ecomui/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:[
          Column(
          children: [
            Image.asset('assets/images/Fluxstore_logo.png',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
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
                  Column(
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
                  Column(
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
                  Column(
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
                  Column(
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



                ],
              ),
            ),


          //  BottomNavigationBar(items: ),


          ],
        ),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: 0,
        onDestinationSelected: (index){
          setState(() {
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Shop',),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],

      ),

    );
  }
}
