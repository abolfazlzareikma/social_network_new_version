import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/MaterialHome.dart';
import 'package:social_network/Screens/SettingsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Social Network',
      debugShowCheckedModeBanner: false,
      initialRoute: "/materialHome",
      getPages: [
        GetPage(name: "/materialHome" , page: () => const MaterialHome()),
      ],
      theme: ThemeData.dark(),
    );
  }
}


