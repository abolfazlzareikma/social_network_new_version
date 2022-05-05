import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/Screens/SettingsScreen.dart';
import 'package:social_network/View/ProfileView.dart';



class ColorContainer extends StatelessWidget {
  final Color color;

  const ColorContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}


class ImageContainer extends StatelessWidget {
  final String image;
  final bool? color;

  const ImageContainer({Key? key, required this.image, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/images/" + image),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}


ImageContainerStack(String image , String note , String time) {
  return Stack(
    children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/" + image),
              fit: BoxFit.cover,
            ),
          ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                color: backgroundColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(note , style: const TextStyle(fontSize: 18)),
              )),
        ),
      ),
    ],
  );
}


ColorContainerStack(Color color , String note , String time) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                color: color == backgroundColor ? Colors.grey.withOpacity(0.5) : backgroundColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(note , style: const TextStyle(fontSize: 18)),
              )),
        ),
      ),
    ],
  );
}


class AppBarIconContainer extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final Color iconColor;
  final Widget? text;
  final bool? textBool;
  final double height;
  final double width;
  const AppBarIconContainer({Key? key, this.icon, this.color, required this.iconColor, this.text, this.textBool , required this.height , required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: textBool == true ? text : Icon(icon , size: 21 , color: iconColor),
    );
  }
}


class StaggeredGridTileCardColor extends StatelessWidget {
  final int cross;
  final int main;
  final Color color;

  const StaggeredGridTileCardColor({Key? key, required this.cross, required this.main, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: cross,
      mainAxisCellCount: main,
      child: ColorContainer(color: color),
    );
  }
}


class StaggeredGridTileCardImage extends StatelessWidget {
  final int cross;
  final int main;
  final String image;

  const StaggeredGridTileCardImage({Key? key, required this.cross, required this.main, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: cross,
      mainAxisCellCount: main,
      child: ImageContainer(image: image),
    );
  }
}


class SettingsCard extends StatelessWidget {
  final IconData iconData;
  final String title;
  final IconData? iconDataTwo;
  final Color? color;
  final Color? colorTwo;
  final bool? twoIcon;
  const SettingsCard({Key? key, required this.iconData, this.color, this.twoIcon, this.iconDataTwo, this.colorTwo, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: saveTheme ? decorationCardPostColorWhite : backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialAnimation(
              duration: const Duration(seconds: 1),
              name: "flipY",
              child: Center(
                child: twoIcon == true
                    ? Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Icon(iconData , size: 60 , color: color),
                      Icon(iconDataTwo , size: 60 , color: colorTwo),
                  ],
                ),
                    ) : Icon(iconData , size: 80 , color: color),
              ),
            ),
            MaterialAnimation(
              duration: const Duration(seconds: 1),
              name: "slideHorizontal",
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(title , style: TextStyle(fontSize: 14 , color: backgroundColorWhite)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
