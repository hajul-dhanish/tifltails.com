import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                spacing: 10,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'assets/images/main.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: kMainTitle,
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 64 - 15 : 32,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor)),
                  ])),
                  Text(
                    kMainSubTitle,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 - 25 : 22,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    kMainContent,
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 36 - 15 : 14,
                        fontWeight: FontWeight.w300),
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      MainButton(
                        title: 'Available soon',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      ),
                      SizedBox(width: 10),
                      MainButton(
                        title: 'Learn More',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      )
                    ],
                  )
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/main.png',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}
