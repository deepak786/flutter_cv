import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_github/ui/widgets/circle_image_view.dart';
import 'package:portfolio_github/ui/widgets/contact_icon.dart';
import 'package:portfolio_github/utility/constants.dart';
import 'package:portfolio_github/utility/my_colors.dart';
import 'package:portfolio_github/utility/my_styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _imageSize = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            decoration:
                BoxDecoration(color: Colors.black87.withOpacity(0.5)),
            child: ListView(
              padding: EdgeInsets.only(top: 20),
              children: [
                Column(
                  children: [
                    ScaleAnimatedTextKit(
                      onTap: () {},
                      text: Constants.hashtags.split(" "),
                      textStyle: TextStyles().h1(
                        color: Colors.white,
                        isBold: false
                      ),
                      repeatForever: true,
                      duration: Duration(milliseconds: 1000),
                    ),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 450,
                            child: Card(
                              margin: EdgeInsets.only(top: _imageSize / 2),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // name
                                  SizedBox(height: _imageSize / 2 + 20),
                                  Text(
                                    Constants.name,
                                    style: TextStyles().title(
                                      color: Colors.black87,
                                    ),
                                  ),
                                  // title
                                  SizedBox(height: 5),
                                  Text(
                                    Constants.title,
                                    style: TextStyles().subTitle(
                                      color: MyColors().primary,
                                      isBold: false,
                                    ),
                                  ),
                                  // hashtags
                                  SizedBox(height: 10),
                                  Text(
                                    Constants.hashtags,
                                    style: TextStyles().normal(
                                      color: MyColors().primary,
                                      isBold: false,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  // about me
                                  SizedBox(height: 30),
                                  Text(
                                    "About me",
                                    style: TextStyles().normal(
                                      color: Colors.black87,
                                      isBold: true,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, right: 30),
                                      child: Text(
                                        Constants.description,
                                        style: TextStyles().normal(
                                          color: MyColors().primary,
                                          isBold: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // email and skype
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: Constants.contact.entries
                                        .map((entry) =>
                                            ContactIcon(entry.key, entry.value))
                                        .toList(),
                                  ),
                                  // social
                                  SizedBox(height: 30),
                                  Text(
                                    "Connect with me",
                                    style: TextStyles().normal(
                                      color: Colors.black87,
                                      isBold: true,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: Constants.social.entries
                                        .map(
                                          (entry) => ContactIcon(
                                            entry.key,
                                            entry.value,
                                            size: 30,
                                            iconSize: 12,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  // flutter love
                                  SizedBox(height: 50),
                                  Text(
                                    "Made with ❤️ in Flutter",
                                    style: TextStyles().medium(
                                      color: Colors.black45,
                                      isBold: false,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // image
                        Align(
                          alignment: Alignment.topCenter,
                          child: CircleImageView(
                            "images/profile.png",
                            size: _imageSize,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
