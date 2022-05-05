import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialFloating.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';
import 'package:shimmer_animation/shimmer_animation.dart';




class ProfileView extends StatelessWidget {
  final String cover, userProfile, userName, followersNumber;
  final int postsNumber;
  final int followingNumber;
  final String? bio;
  final bool? original;
  final List<Widget> posts;
  final bool? settingEdit;
  final bool? follow;
  final bool? floatingProfile;
  final bool? story;

  const ProfileView({Key? key, required this.cover, required this.userProfile, required this.userName, required this.followersNumber, required this.postsNumber, required this.followingNumber, this.bio, required this.posts, this.original, this.settingEdit, this.follow, this.floatingProfile, this.story}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                MaterialAnimation(
                  duration: const Duration(seconds: 1),
                  name: "flipX",
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      image: DecorationImage(
                        image: AssetImage("assets/images/" + cover),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ),
                MaterialAnimation(
                  duration: const Duration(seconds: 1),
                  name: "scale",
                  child: Container(
                    height: 120,
                    width: 120,
                    transform: Matrix4.translationValues(0 , 40 , 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: story == true ? Colors.deepPurpleAccent : saveTheme ? backgroundColor : backgroundColorWhite,
                          width: 4,
                      ),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(
                          image: AssetImage("assets/images/" + userProfile),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // CircleAvatar(
                    //                       backgroundImage: AssetImage("assets/images/" + userProfile),
                    //                       maxRadius: 60,
                    //                     ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          MaterialAnimation(
                              duration: const Duration(milliseconds: 700),
                              name: "slideHorizontal",
                              child: Text(
                                  userName,
                                  style: TextStyle(
                                      color: saveTheme ? backgroundColorWhite : backgroundColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                  ))),
                          MaterialAnimation(
                            duration: const Duration(milliseconds: 700),
                            name: "slideHorizontal",
                            child: original == true
                                ? const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(Icons.check_circle_rounded,
                                  color: Colors.blue),
                            )
                                : Container(
                              padding: const EdgeInsets.only(right: 2),
                            ),
                          ),
                        ],
                      ),
                      settingEdit == true ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: AppBarIconContainer(
                              text: Center(child: Text("Edit" , style: TextStyle(color: saveTheme ? backgroundColor : backgroundColorWhite , fontSize: 16))),
                              textBool: true,
                              color: saveTheme ? backgroundColorWhite : backgroundColor,
                              icon: Icons.more,
                              iconColor: Colors.blue,
                              height: 40,
                              width: 50,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const SettingsScreen());
                            },
                            child: AppBarIconContainer(
                              text: Center(child: Text("Settings" , style: TextStyle(color: saveTheme ? backgroundColor : backgroundColorWhite , fontSize: 16))),
                              textBool: true,
                              color: saveTheme ? backgroundColorWhite : backgroundColor,
                              icon: Icons.more,
                              iconColor: Colors.blue,
                              height: 40,
                              width: 80,
                            ),
                          ),
                        ],
                      ) : AppBarIconContainer(
                        text: Center(child: Text(follow == true ? "Following" : "Follow" , style: TextStyle(color: saveTheme ? backgroundColor : backgroundColorWhite , fontSize: 16))),
                        textBool: true,
                        color: saveTheme ? backgroundColorWhite : backgroundColor,
                        icon: Icons.more,
                        iconColor: Colors.blue,
                        height: 40,
                        width: follow == true ? 100 : 80,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: MaterialAnimation(
                      duration: const Duration(seconds: 1),
                      name: "slideHorizontal",
                      child: Text(
                          bio!,
                          style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18 , fontWeight: FontWeight.w300)),
                    ),
                  ),
                ],
              ),
            ),
            MaterialAnimation(
              duration: const Duration(seconds: 1),
              name: "scale",
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(postsNumber.toString() , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                        Text("Posts" , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(followersNumber , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                        Text("Followers" , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(followingNumber.toString() , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                        Text("Following" , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 18)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            MaterialAnimation(
              duration: const Duration(seconds: 1),
              name: "scale",
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: saveTheme ? backgroundColorWhite : backgroundColor,
                      border: Border.all(color: saveTheme ? backgroundColorWhite : backgroundColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Posts" , style: TextStyle(color: saveTheme ? backgroundColor : backgroundColorWhite , fontSize: 18)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialAnimation(
                duration: const Duration(seconds: 1),
                name: "flipY",
                child: StaggeredGrid.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: posts,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingProfile == true ? Container() : const MaterialFloating(),
    );
  }
}
