import 'package:TiflTails/model/category_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class Categories extends StatelessWidget {
  final List<CategoryModel> categoryList;
  const Categories({
    Key? key,
    required this.categoryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categoryList.length,
          (index) => Category(
            title: categoryList[index].CategoryName,
            numOfItems: categoryList[index].Count,
            press: () {},
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
