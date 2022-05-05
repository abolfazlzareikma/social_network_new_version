import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialFloating.dart';
import 'package:social_network/Material/MaterialHome.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class MaterialTheme extends StatefulWidget {
  const MaterialTheme({Key? key}) : super(key: key);

  @override
  State<MaterialTheme> createState() => _MaterialThemeState();
}

class _MaterialThemeState extends State<MaterialTheme> {

  // SharedPreferences

  // _saveTheme() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('saveTheme', saveTheme);
  // }
  //
  // loadTheme() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     saveTheme = prefs.getBool('saveTheme')!;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // loadTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: Center(
        child: FlutterSwitch(
          value: saveTheme,
          onToggle: (val) {
            setState(() {
              saveTheme = val;
              // _saveTheme();
            });
          },
          activeColor: Colors.deepPurpleAccent,
        ),
      ),
      floatingActionButton: const MaterialFloating(
        push: true,
        page: MaterialHome(),
      ),
    );
  }
}
