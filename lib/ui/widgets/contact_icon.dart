import 'package:flutter/material.dart';
import 'package:portfolio_github/utility/my_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final double size;
  final double iconSize;

  ContactIcon(this.icon, this.url, {this.size = 35, this.iconSize = 20});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      elevation: 0.0,
      hoverElevation: 0.0,
      constraints: BoxConstraints(
        minWidth: size,
        minHeight: size,
        maxWidth: size,
        maxHeight: size,
      ),
      fillColor: MyColors().primary,
      hoverColor: MyColors().accent,
      child: Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      padding: EdgeInsets.all(5),
    );
  }
}
