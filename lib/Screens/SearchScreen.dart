import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Material/MaterialHome.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/View/AppBarView.dart';
import 'package:social_network/View/ProfileView.dart';
import 'package:social_network/View/SearchBarView.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("Search" , style: TextStyle(fontSize: 23 , color: saveTheme ? backgroundColorWhite : backgroundColor , fontWeight: FontWeight.bold))),
            ),
            const SizedBox(height: 20),
            const MaterialAnimation(
              duration: Duration(seconds: 1),
              name: "scale",
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SearchBarView(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: MaterialAnimation(
                duration: const Duration(seconds: 1),
                name: "flipY",
                child: StaggeredGrid.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: const [
                    StaggeredGridTileCardColor(
                      cross: 2,
                      main: 1,
                      color: Colors.green,
                    ),
                    StaggeredGridTileCardColor(
                      cross: 1,
                      main: 5,
                      color: Colors.blue,
                    ),
                    StaggeredGridTileCardColor(
                      cross: 2,
                      main: 3,
                      color: Colors.blue,
                    ),
                    StaggeredGridTileCardColor(
                      cross: 2,
                      main: 4,
                      color: Colors.green,
                    ),
                    StaggeredGridTileCardColor(
                      cross: 2,
                      main: 4,
                      color: Colors.blue,
                    ),
                    StaggeredGridTileCardColor(
                      cross: 3,
                      main: 2,
                      color: Colors.green,
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
