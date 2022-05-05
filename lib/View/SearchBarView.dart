import 'package:flutter/material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';

import 'package:social_network/Screens/SettingsScreen.dart';



class SearchBarView extends StatefulWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: 50,
        width: size.width,
        decoration: BoxDecoration(
          color: saveTheme ? backgroundColor : backgroundColorWhite,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(5 , 10),
              color: saveTheme ? Colors.black : Colors.grey,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search , size: 23 , color: saveTheme ? Colors.white : backgroundColor),
              suffixStyle: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor),
              fillColor: Colors.grey,
              focusColor: Colors.grey,
              hoverColor: Colors.grey,
              border: InputBorder.none,
              hintStyle: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor , fontSize: 15),
              hintText: 'Search ...',
            ),
            controller: textController,
            cursorColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
