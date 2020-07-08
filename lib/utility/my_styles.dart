import 'package:flutter/material.dart';

class TextStyles {
  TextStyle h1({Color color = Colors.white, bool isBold: true}) {
    return TextStyle(
      color: color,
      fontSize: 28,
      fontWeight: isBold ? FontWeight.bold : null,
    );
  }

  TextStyle title({Color color = Colors.white, bool isBold: true}) {
    return TextStyle(
      color: color,
      fontSize: 22,
      fontWeight: isBold ? FontWeight.bold : null,
    );
  }

  TextStyle subTitle({Color color = Colors.white, bool isBold: true}) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: isBold ? FontWeight.bold : null,
    );
  }

  TextStyle normal({Color color = Colors.white, bool isBold: true}) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: isBold ? FontWeight.bold : null,
    );
  }

  TextStyle medium({Color color = Colors.white, bool isBold: true}) {
    return TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: isBold ? FontWeight.bold : null,
    );
  }
}
