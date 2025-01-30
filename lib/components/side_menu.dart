import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 10,
            children: [
              NavItem(
                title: 'Our Service',
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
              NavItem(
                title: 'About Us',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
