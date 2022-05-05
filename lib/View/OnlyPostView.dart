import 'package:flutter/material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialFloating.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/View/PostView.dart';
import 'package:social_network/View/ProfileView.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class OnlyPostView extends PostCard {
  const OnlyPostView(
      {Key? key, required String image, required String title, required String description, required String userName, required String userProfile, required String createdAt, required String commentsNumber, required Widget userPage})
      : super(key: key,
      image: image,
      title: title,
      description: description,
      userName: userName,
      userProfile: userProfile,
      createdAt: createdAt,
      commentsNumber: commentsNumber,
      userPage: userPage);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PostCard(
            image: image,
            title: title,
            description: description,
            userName: userName,
            userProfile: userProfile,
            createdAt: createdAt,
            commentsNumber: commentsNumber,
            userPage: userPage,
            changePage: true,
          ),
        ],
      ),
      floatingActionButton: const MaterialFloating(),
    );
  }
}


