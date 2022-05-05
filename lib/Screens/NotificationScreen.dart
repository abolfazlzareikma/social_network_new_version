import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';
import 'package:social_network/View/AppBarView.dart';
import 'package:social_network/View/ProfileView.dart';



class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(child: Text("Notifications" , style: TextStyle(fontSize: 23 , color: saveTheme ? backgroundColorWhite : backgroundColor , fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: MaterialAnimation(
                duration: const Duration(seconds: 1),
                name: "flipY",
                child: StaggeredGrid.count(
                  crossAxisCount: 6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: ColorContainerStack(Colors.teal , "abolfazlzareikma Follows you" , "2022/1/8"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 6,
                      child: ColorContainerStack(Colors.deepOrangeAccent , "Saved A Post" , "23 minutes ago"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 5,
                      child: ColorContainerStack(Colors.blue , "abolfazlzareikma liked your post" , "2022/1/2"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 4,
                      child: ColorContainerStack(Colors.deepPurpleAccent , "abolfazlzareikma Follows you " , "2022/1/2"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 2,
                      child: ColorContainerStack(Colors.amberAccent , "abolfazlzareikma liked your post" , "2022/1/2"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 4,
                      child: ColorContainerStack(Colors.pink , "abolfazlzareikma Follows you" , "2022/1/2"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 4,
                      child: ColorContainerStack(Colors.brown , "abolfazlzareikma Saved A Post" , "2022/1/2"),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 6,
                      mainAxisCellCount: 2,
                      child: ColorContainerStack(Colors.teal , "abolfazlzareikma Follows you" , "2022/1/2"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
