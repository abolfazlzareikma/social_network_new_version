import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class AppBarView extends StatefulWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  State<AppBarView> createState() => _AppBarViewState();
}


class _AppBarViewState extends State<AppBarView> {



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
          },
          child: AppBarIconContainer(
            icon: Icons.add,
            color: Colors.deepPurpleAccent,
            iconColor: saveTheme ? backgroundColor : backgroundColorWhite,
            height: 40,
            width: 40,
          ),
        ),
        Container(
          child: Text("Social Network".toUpperCase() , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold , color: saveTheme ? backgroundColorWhite : backgroundColor)),
        ),
        AppBarIconContainer(
          icon: saveTheme ? Icons.dark_mode : Icons.light_mode,
          color: Colors.deepPurpleAccent,
          iconColor: saveTheme ? backgroundColor : backgroundColorWhite,
          height: 40,
          width: 40,
          ),
        AppBarIconContainer(
          icon: Icons.arrow_forward,
          color: Colors.deepPurpleAccent,
          iconColor: saveTheme ? backgroundColor : backgroundColorWhite,
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}


