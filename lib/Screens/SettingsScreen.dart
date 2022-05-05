import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialFloating.dart';
import 'package:social_network/Material/MaterialHome.dart';
import 'package:social_network/Material/MaterialTheme.dart';
import 'package:social_network/Screens/ProfileScreen.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
bool saveTheme = false;

class _SettingsScreenState extends State<SettingsScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: GridView.count(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 15,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const MaterialTheme());
                },
                child: const SettingsCard(
                  iconData: Icons.dark_mode,
                  color: Colors.deepPurpleAccent,
                  twoIcon: true,
                  iconDataTwo: Icons.light_mode,
                  colorTwo: Colors.amber,
                  title: "Theme",
                ),
              ),
              const SettingsCard(
                iconData: Icons.account_box,
                color: Colors.deepPurpleAccent,
                title: "Account",
              ),
              const SettingsCard(
                iconData: Icons.lock,
                color: Colors.deepPurpleAccent,
                title: "Privacy",
              ),
              const SettingsCard(
                iconData: Icons.security,
                color: Colors.deepPurpleAccent,
                title: "Security",
              ),
              const SettingsCard(
                iconData: Icons.help,
                color: Colors.deepPurpleAccent,
                title: "Help",
              ),
              const SettingsCard(
                iconData: Icons.language,
                color: Colors.deepPurpleAccent,
                title: "Language",
              ),
              const SettingsCard(
                iconData: Icons.bookmark,
                color: Colors.deepPurpleAccent,
                title: "Saved",
              ),
              const SettingsCard(
                iconData: Icons.qr_code,
                color: Colors.deepPurpleAccent,
                title: "QR Code",
              ),
              const SettingsCard(
                iconData: Icons.logout,
                color: Colors.deepPurpleAccent,
                title: "Log out",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const MaterialFloating(
        push: true,
        page: MaterialHome(),
      ),
    );
  }
}



// FlutterSwitch(
//           value: saveTheme,
//           onToggle: (val) {
//             setState(() {
//               saveTheme = val;
//               _saveTheme();
//             });
//           },
//         ),