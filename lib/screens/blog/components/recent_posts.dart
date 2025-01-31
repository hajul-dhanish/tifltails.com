import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/husky.jfif",
            title: "Our “Secret” Formula to lead happy life with huskies",
            press: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/love_pet.jpg",
            title: "Digital Product Innovations from tifltails with Love",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;

  const RecentPostCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),              
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: kDarkBlackColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
