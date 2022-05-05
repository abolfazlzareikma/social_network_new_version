import 'package:flutter/material.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialColor.dart';


class StoriesView extends StatelessWidget {
  const StoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: const [
        StoriesCard(
            image: "account.jpeg",
            account: true,
        ),
        StoriesCard(
          image: "leomessi.jpg",
        ),
        StoriesCard(
            image: "cristiano.webp",
        ),
        StoriesCard(
            image: "placeholder.png",
        ),
        StoriesCard(
            image: "placeholder.png",
        ),
        StoriesCard(
            image: "placeholder.png",
        ),
        StoriesCard(
            image: "placeholder.png",
            activeStory: false,
        ),
        StoriesCard(
            image: "placeholder.png",
            activeStory: false,
        ),
      ],
    ));
  }
}



class StoriesCard extends StatelessWidget {
  final String image;
  final bool? account;
  final bool? activeStory;
  const StoriesCard({Key? key, required this.image, this.account, this.activeStory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20 , right: 12 , left: 11),
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onLongPress: () {

            },
            child: MaterialAnimation(
              duration: const Duration(seconds: 1),
              name: account == true ? "" : "slideHorizontal",
              child: Container(
                height: 120,
                width: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: activeStory == false ? Colors.grey.shade400 : Colors.deepPurpleAccent , width: account == true ? 0 : 3),
                  image: DecorationImage(
                    image: AssetImage("assets/images/" + image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          account == true ? MaterialAnimation(
            duration: const Duration(seconds: 1),
            name: "slideHorizontal",
            child: Container(
              transform: Matrix4.translationValues(0 , 0 , 0),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(10),
                ),
              ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.add),
                )),
          ) : Container(),
        ],
      ),
    );
  }
}
