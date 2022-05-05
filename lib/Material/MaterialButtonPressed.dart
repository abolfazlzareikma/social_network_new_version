import 'package:flutter/material.dart';
import 'package:social_network/Material/MaterialColor.dart';



class MaterialButtonPressed extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Color? color;

  const MaterialButtonPressed(
      {Key? key, required this.child, required this.onPressed, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: MaterialButton(
        height: 50,
        minWidth: 100,
        onPressed: () {
          onPressed();
        },
        child: child,
      ),
    );
  }
}
