import 'package:flutter/material.dart';
import 'package:flutter_web/components/footer.dart';
import 'package:flutter_web/components/header.dart';
import 'package:flutter_web/components/side_menu.dart';
import 'package:flutter_web/constants.dart';
import 'package:flutter_web/responsive.dart';
import 'package:flutter_web/screens/blog/blog_view.dart';

import 'components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),
                Jumbotron(),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  child: Text("Blogs and feeds",
                      style: TextStyle(
                          fontSize:
                              Responsive.isDesktop(context) ? 64 - 15 : 32,
                          fontWeight: FontWeight.w600,
                          color: kDarkBlackColor)),
                ),
                Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: BlogView()),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
