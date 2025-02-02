import 'package:TiflTails/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const SidebarContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Responsive.isMobile(context) ? Colors.transparent : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!Responsive.isMobile(context)) ...[
            Text(
              title,
              style: TextStyle(
                color: kDarkBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: kDefaultPadding / 2), //10
          ],
          child,
        ],
      ),
    );
  }
}
