import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class MaterialFloating extends StatefulWidget {
  final bool? push;
  final Widget? page;
  const MaterialFloating({Key? key, this.push, this.page}) : super(key: key);

  @override
  State<MaterialFloating> createState() => _MaterialFloatingState();
}

class _MaterialFloatingState extends State<MaterialFloating> {
  @override
  Widget build(BuildContext context) {
    return MaterialAnimation(
      duration: const Duration(seconds: 1),
      name: "scale",
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.push == true ? Get.to(widget.page) : Get.back();
          });
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.arrow_back , color: saveTheme ? backgroundColor : backgroundColorWhite),
        elevation: 0,
      ),
    );
  }
}
