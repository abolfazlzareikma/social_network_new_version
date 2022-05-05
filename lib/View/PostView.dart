import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:social_network/Material/Material.dart';
import 'package:social_network/Material/MaterialAnimation.dart';
import 'package:social_network/Material/MaterialButtonPressed.dart';
import 'package:social_network/Material/MaterialColor.dart';
import 'package:social_network/Screens/HomeScreen.dart';
import 'package:social_network/Screens/NotificationScreen.dart';
import 'package:social_network/Screens/ProfileScreen.dart';
import 'package:social_network/View/OnlyPostView.dart';
import 'package:social_network/View/ProfileView.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:social_network/Screens/SettingsScreen.dart';



class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {

  ProfileView profileViewLeoMessi = const ProfileView(
    userName: "leomessi",
    userProfile: "leomessi.jpg",
    cover: "placeholder.png",
    bio: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ab laborum commodi saepe non sapiente esse ratione, suscipit vel? Veritatis doloremque deleniti in fugit, optio iure eius ullam velit praesentium!",
    postsNumber: 3,
    followersNumber: "200M",
    followingNumber: 506,
    story: true,
    posts: [
      StaggeredGridTile.count(
        crossAxisCellCount: 2,
        mainAxisCellCount: 1,
        child: ImageContainer(image: "1.jpg"),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 5,
        child: ImageContainer(image: "3.jpg"),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 2,
        mainAxisCellCount: 3,
        child: ColorContainer(color: Colors.blue),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 2,
        mainAxisCellCount: 4,
        child: ImageContainer(image: "5.jpg"),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 2,
        mainAxisCellCount: 4,
        child: ColorContainer(color: Colors.pink),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 3,
        mainAxisCellCount: 2,
        child: ColorContainer(color: Colors.pink),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostCard(
          userName: "leomessi",
          userProfile: "leomessi.jpg",
          image: "1.jpg",
          title: "deleniti in fugit,",
          description: "Lorem, ipsum deleniti in fugit, optio iure eius ullam velit praesentium!",
          createdAt: '43 minutes ago',
          commentsNumber: '37,009',
          original: true,
          story: true,
          userPage: profileViewLeoMessi,
        ),
        PostCard(
          userName: "abolfazlzareikma",
          userProfile: "",
          image: "flutter.webp",
          title: "Flutter Framework",
          description: "Lorem, ipsum deleniti in fugit, optio iure eius ullam velit praesentium!",
          createdAt: '57 minutes ago',
          commentsNumber: '1,083,088',
          original: true,
          story: false,
          userPage: profileViewLeoMessi,
        ),
        PostCard(
          userName: "leomessi",
          userProfile: "leomessi.jpg",
          image: "5.jpg",
          title: "Lorem, ipsum delenit",
          description: "Lorem, ipsum de , ipsum de lor sit amet consecte dipisicing elit. Molestias ab laborum commodi saepe non sapiente esse ratione, suscipit vel? Veritatis doloremque deleniti in fugit, optio iure eius ullam velit praesentium!",
          createdAt: '1 hour ago',
          commentsNumber: '181,210',
          original: true,
          story: true,
          userPage: profileViewLeoMessi,
        ),
        PostCard(
          userName: "leomessi",
          userProfile: "leomessi.jpg",
          image: "3.jpg",
          title: "",
          description: "",
          createdAt: '2 hours ago',
          commentsNumber: '20,053',
          original: true,
          story: true,
          userPage: profileViewLeoMessi,
        ),
        const PostCard(
          userName: "cristiano",
          userProfile: "cristiano.webp",
          image: "",
          title: "Hi, I'am Cristiano",
          description: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ab laborum commodi saepe non sapiente esse ratione, suscipit vel? Veritatis doloremque deleniti in fugit, optio iure eius ullam velit praesentium!",
          createdAt: '8 hours ago',
          original: true,
          commentsNumber: '100,682',
          story: true,
          userPage: ProfileView(
            userName: "cristiano",
            userProfile: "cristiano.webp",
            cover: "placeholder.png",
            bio: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestias ab laborum commodi saepe non sapiente esse ratione, suscipit vel? Veritatis doloremque deleniti in fugit, optio iure eius ullam velit praesentium!",
            postsNumber: 1,
            followersNumber: "120M",
            followingNumber: 506,
            story: true,
            posts: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: ColorContainer(color: Colors.red),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 5,
                child: ColorContainer(color: Colors.red),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: ColorContainer(color: Colors.red),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: ColorContainer(color: Colors.red),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: ColorContainer(color: Colors.red),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: ColorContainer(color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class PostCard extends StatelessWidget {
  final String image;
  final String userName;
  final String userProfile;
  final String title, description, createdAt, commentsNumber;
  final Widget userPage;
  final bool? changePage;
  final bool? original;
  final bool? story;

  const PostCard(
      {Key? key, required this.image, required this.title, required this.description, required this.userName, required this.userProfile, required this.createdAt, required this.commentsNumber, required this.userPage, this.changePage, this.original, this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: () {
                  changePage == true ? print("not push") : Navigator.of(context)
                      .push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, _) {
                          return OnlyPostView(image: image,
                              title: title,
                              description: description,
                              userName: userName,
                              userProfile: userProfile,
                              createdAt: createdAt,
                              commentsNumber: commentsNumber,
                              userPage: userPage);
                        },
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: saveTheme
                        ? decorationCardPostColorWhite
                        : decorationCardPostColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [

                        /// Image Post
                        image.isNotEmpty ?
                        MaterialAnimation(
                          duration: const Duration(seconds: 1),
                          name: "flipY",
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Shimmer(
                              duration: const Duration(seconds: 2),
                              interval: const Duration(seconds: 2),
                              color: Colors.white,
                              child: Container(
                                height: 230,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/" + image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ) : Container(),
                        const SizedBox(height: 20),

                        /// Title And Description Post
                        title.isNotEmpty ? MaterialAnimation(
                          duration: const Duration(seconds: 1),
                          name: "slideHorizontal",
                          child: Text(
                            "$title\n\n$description",
                            style: TextStyle(color: saveTheme
                                ? backgroundColorWhite
                                : backgroundColor),),
                        ) : Container(),
                        const SizedBox(height: 20),

                        /// Icons : Like , Comment , Saved , Share
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  MaterialAnimation(
                                    duration: const Duration(milliseconds: 300),
                                    name: "scale",
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: AppBarIconContainer(
                                        icon: Icons.favorite_border,
                                        color: saveTheme
                                            ? backgroundColorWhite
                                            : backgroundColor,
                                        iconColor: saveTheme
                                            ? backgroundColor
                                            : backgroundColorWhite,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  MaterialAnimation(
                                    name: "scale",
                                    duration: const Duration(milliseconds: 600),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: AppBarIconContainer(
                                        icon: Icons.mode_comment_outlined,
                                        color: saveTheme
                                            ? backgroundColorWhite
                                            : backgroundColor,
                                        iconColor: saveTheme
                                            ? backgroundColor
                                            : backgroundColorWhite,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  MaterialAnimation(
                                    name: "scale",
                                    duration: const Duration(
                                        milliseconds: 900),
                                    child: AppBarIconContainer(
                                      icon: Icons.share,
                                      color: saveTheme
                                          ? backgroundColorWhite
                                          : backgroundColor,
                                      iconColor: saveTheme
                                          ? backgroundColor
                                          : backgroundColorWhite,
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: MaterialAnimation(
                                      name: "scale",
                                      duration: const Duration(
                                          milliseconds: 1200),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                              backgroundColor: saveTheme ? backgroundColor : backgroundColorWhite,
                                              title: "",
                                              titlePadding: const EdgeInsets
                                                  .all(0),
                                              confirm: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0),
                                                child: MaterialButtonPressed(
                                                  color: saveTheme ? decorationCardPostColorWhite : Colors.grey.shade300,
                                                  onPressed: () {
                                                    Get.to(userPage);
                                                  },
                                                  child: Text(
                                                    "Go to Page",
                                                    style: TextStyle(
                                                        color: saveTheme ? backgroundColorWhite : backgroundColor),),
                                                ),
                                              ),
                                              cancel: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0),
                                                child: MaterialButtonPressed(
                                                  color: saveTheme ? decorationCardPostColorWhite : Colors.grey.shade300,
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: Text("Back",
                                                    style: TextStyle(
                                                        color: saveTheme ? backgroundColorWhite : backgroundColor),),
                                                ),
                                              ),
                                              content: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        "assets/images/" +
                                                            userProfile),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .all(10),
                                                    child: Text(userName , style: TextStyle(color: saveTheme ? backgroundColorWhite : backgroundColor),),
                                                  ),
                                                  original == true
                                                      ? const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 0),
                                                    child: Icon(Icons
                                                        .check_circle_rounded,
                                                        color: Colors.blue),
                                                  )
                                                      : Container(
                                                    padding: const EdgeInsets
                                                        .only(right: 2),
                                                  ),
                                                ],
                                              ),
                                              onConfirm: () {
                                                Navigator.pop(context);
                                              }
                                          );
                                        },
                                        child: AppBarIconContainer(
                                          icon: Icons.menu,
                                          color: saveTheme
                                              ? backgroundColorWhite
                                              : backgroundColor,
                                          iconColor: saveTheme
                                              ? backgroundColor
                                              : backgroundColorWhite,
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  MaterialAnimation(
                                    name: "scale",
                                    duration: const Duration(
                                        milliseconds: 1500),
                                    child: AppBarIconContainer(
                                      icon: Icons.bookmark_border,
                                      color: saveTheme
                                          ? backgroundColorWhite
                                          : backgroundColor,
                                      iconColor: saveTheme
                                          ? backgroundColor
                                          : backgroundColorWhite,
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        /// Number Comments And Time Created Post
                        MaterialAnimation(
                          duration: const Duration(seconds: 1),
                          name: "slide",
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text("View All " + commentsNumber +
                                      " Comments", style: TextStyle(
                                      color: saveTheme
                                          ? backgroundColorWhite
                                          : backgroundColor)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(createdAt, style: TextStyle(
                                      color: saveTheme
                                          ? backgroundColorWhite
                                          : backgroundColor)),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              /// UserName And UserProfile And Original Check Page
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialAnimation(
                    duration: const Duration(seconds: 1),
                    name: "slideHorizontal",
                    child: Container(
                      transform: Matrix4.translationValues(10, -28, 0),
                      decoration: BoxDecoration(
                        color: saveTheme
                            ? backgroundColorWhite
                            : backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: story == true ? Colors.deepPurpleAccent : saveTheme ? backgroundColorWhite : backgroundColor , width: 1.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/" + userProfile),
                                minRadius: 12,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(userName, style: TextStyle(
                                  color: saveTheme
                                      ? backgroundColor
                                      : backgroundColorWhite)),
                            ),
                            original == true
                                ? const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(Icons.check_circle_rounded,
                                  color: Colors.blue),
                            )
                                : Container(
                              padding: const EdgeInsets.only(right: 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),

          /// Divider Line
          Padding(
            padding: const EdgeInsets.all(30),
            child: MaterialAnimation(
                duration: const Duration(seconds: 1),
                child: Divider(thickness: 0.5,
                    color: saveTheme ? backgroundColorWhite : backgroundColor)),
          ),
        ],
      ),
    );
  }
}
