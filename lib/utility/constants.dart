import 'package:flutter/material.dart';
import 'package:portfolio_github/utility/contact_icons.dart';

class Constants {
  static final String name = "Deepak Goyal";
  static final String title = "Software Developer";

  static final String hashtags =
      "#java #android #kotlin #flutter #dart #firebase";

  static final String description = "- 6+ years of experience in development\n"
      "- I love programming\n"
      "";

  static final Map<IconData, String> contact = {
    ContactIcons.email: "mailto:er.deepakgoyal786@gmail.com",
    ContactIcons.skype: "https://join.skype.com/invite/lbm5CqgotWPH",
  };

  static final Map<IconData, String> social = {
    ContactIcons.facebook: "https://www.facebook.com/deepak.apk",
    ContactIcons.instagram: "https://www.instagram.com/deepak.786/",
    ContactIcons.linkedin: "https://www.linkedin.com/in/deepakdroid",
    ContactIcons.twitter: "https://twitter.com/DeepakDroid",
    ContactIcons.medium: "https://medium.com/@deepakdroid",
    ContactIcons.stackoverflow:
        "https://stackoverflow.com/users/3452078/deepak-goyal",
    ContactIcons.github: "https://github.com/deepak786",
  };

  static final Map<IconData, String> programming = {};
}
