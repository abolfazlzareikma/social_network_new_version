import 'dart:io';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/HomeScreen.dart';
import 'package:social_network/Screens/NotificationScreen.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SearchScreen.dart';
import 'package:social_network/View/AppBarView.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class MaterialHome extends StatefulWidget {
  const MaterialHome({Key? key}) : super(key: key);


  @override
  State<MaterialHome> createState() => _MaterialHomeState();
}

class _MaterialHomeState extends State<MaterialHome> {
  int _selectedTab = 1;
  late PageController pageController;




  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedTab);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: const [
        SearchScreen(),
        HomeScreen(),
        NotificationScreen(),
        ProfileScreen(),
      ].elementAt(_selectedTab),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: saveTheme ? backgroundColor : backgroundColorWhite,
          borderRadius: BorderRadius.circular(50),
        ),
        child: CustomNavigationBar(
          blurEffect: false,
            backgroundColor: saveTheme ? backgroundColorWhite : backgroundColor,
            strokeColor: Colors.deepPurpleAccent,
            isFloating: true,
            elevation: 10,
            borderRadius: const Radius.circular(30),
            selectedColor: Colors.blue,
            unSelectedColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedTab = index;
              });
            },
            currentIndex: _selectedTab,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.search),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.notifications),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.account_box),
              ),
            ],
        ),
      ),
      // Padding(
      //         padding: const EdgeInsets.all(15),
      //         child: BottomNavigationBar(
      //           selectedItemColor: Colors.white,
      //           unselectedItemColor: Colors.grey,
      //           onTap: (index) {
      //             setState(() {
      //               pageController.animateToPage(
      //                 index,
      //                 duration: const Duration(milliseconds: 300),
      //                 curve: Curves.easeIn,
      //               );
      //             });
      //           },
      //           currentIndex: _selectedTab,
      //           items: const [
      //             BottomNavigationBarItem(
      //               label: "Search",
      //               icon: Icon(Icons.search),
      //             ),
      //             BottomNavigationBarItem(
      //               label: "Home",
      //               icon: Icon(Icons.home),
      //             ),
      //             BottomNavigationBarItem(
      //               label: "Notifications",
      //               icon: Icon(Icons.notifications),
      //             ),
      //             BottomNavigationBarItem(
      //               label: "Profile",
      //               icon: Icon(Icons.account_box),
      //             ),
      //           ],
      //         ),
      //       ),
    );
  }
}
