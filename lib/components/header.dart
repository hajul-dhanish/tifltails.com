import 'package:flutter/material.dart';
import 'package:TiflTails/constants.dart';
import 'package:TiflTails/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            appLogo,
            width: 60,
          ),
          Text(
            appName,
            style: GoogleFonts.playfairDisplay(fontSize: 18),
          ),
          Spacer(),
          if (!Responsive.isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Our Service',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'About Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Donate',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
              ],
            ),
          if (Responsive.isMobile(context))
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
