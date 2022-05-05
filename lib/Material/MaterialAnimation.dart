import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';



class MaterialAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final String? name;

  const MaterialAnimation({Key? key, required this.child, required this.duration, this.name}) : super(key: key);

  animationConfig(index , child) {
    switch(index) {
      case "scale":
        return ScaleAnimation(
          child: child,
        );
      case "scaleFade":
        return ScaleAnimation(
          child: FadeInAnimation(
            child: child,
          ),
        );
      case "slide":
        return SlideAnimation(
          child: child,
        );
      case "slideHorizontal":
        return SlideAnimation(
          child: child,
          horizontalOffset: 50,
        );
      case "slideHorizontalFade":
        return SlideAnimation(
          child: FadeInAnimation(
            child: child,
          ),
          horizontalOffset: 50,
        );
      case "slideFade":
        return SlideAnimation(
          child: FadeInAnimation(
            child: child,
          ),
        );
      case "flipX":
        return FlipAnimation(
          flipAxis: FlipAxis.x,
          child: child,
        );
      case "flipY":
        return FlipAnimation(
          flipAxis: FlipAxis.y,
          child: child,
        );
      case "flipXFade":
        return FlipAnimation(
          flipAxis: FlipAxis.x,
          child: FadeInAnimation(
            child: child,
          ),
        );
      case "flipYFade":
        return FlipAnimation(
          flipAxis: FlipAxis.y,
          child: FadeInAnimation(
            child: child,
          ),
        );
      default:
        return Container(
          child: child,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      duration: duration,
      position: 0,
      child: animationConfig(name , child),
    );
  }
}


//     return AnimationConfiguration.staggeredList(
//       duration: duration,
//       position: 0,
//       child: scale == true ? ScaleAnimation(
//         child: FadeInAnimation(
//           child: child,
//         ),
//       ) : SlideAnimation(
//         horizontalOffset: ho,
//         verticalOffset: ve,
//         child: FadeInAnimation(
//           child: child,
//         ),
//       ),
//     );