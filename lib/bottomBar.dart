import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'HomeScreen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(
              ()=> NavigationBar(
            elevation: 0,
            height: 60,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index){
              controller.selectedIndex.value=index;

            },
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            backgroundColor: Colors.white,
            indicatorColor: Colors.white,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Shop'),
              NavigationDestination(icon: Icon(Iconsax.search_normal), label: 'Search'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cart'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),


            ],
          ),
        ),
        body: Obx(
              ()=>controller.screens[controller.selectedIndex.value],
        )

    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  final screens=[
   HomeScreen(),
    Container(color:Colors.green),
    Container(color: Colors.red,),
    Container(color: Colors.yellow,)

  ];

}