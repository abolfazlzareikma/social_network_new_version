import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/View/AppBarView.dart';
import 'package:social_network/View/ProfileView.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {






  @override
  Widget build(BuildContext context) {
    return const ProfileView(
      userName: "abolfazlzarei",
      userProfile: "account.jpeg",
      cover: "three.jpg",
      bio: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ab laborum commodi saepe non sapiente esse ratione, suscipit vel? Veritatis doloremque deleniti in fugit, optio iure eius ullam velit praesentium!",
      postsNumber: 0,
      followersNumber: "10M",
      followingNumber: 320,
      original: true,
      settingEdit: true,
      follow: true,
      floatingProfile: true,
      posts: [
        StaggeredGridTileCardColor(
          cross: 2,
          main: 1,
          color: Colors.blue,
        ),
        StaggeredGridTileCardColor(
          cross: 1,
          main: 5,
          color: Colors.amber,
        ),
        StaggeredGridTileCardColor(
          cross: 2,
          main: 3,
          color: Colors.blue,
        ),
        StaggeredGridTileCardColor(
          cross: 2,
          main: 4,
          color: Colors.grey,
        ),
        StaggeredGridTileCardColor(
          cross: 2,
          main: 4,
          color: Colors.green,
        ),
        StaggeredGridTileCardColor(
          cross: 3,
          main: 2,
          color: Colors.blue,
        ),
      ],
    );
  }
}





