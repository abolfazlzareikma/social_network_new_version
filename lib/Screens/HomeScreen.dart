import 'package:flutter/material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';
import 'package:social_network/View/AppBarView.dart';
import 'package:social_network/View/PostView.dart';
import 'package:social_network/View/StoriesView.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20),
              child: AppBarView(),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: StoriesView(),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(8),
              child: PostView(),
            ),
          ],
        ),
      ),
    );
  }
}


