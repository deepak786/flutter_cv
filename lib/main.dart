import 'package:flutter/material.dart';
import 'package:portfolio_github/ui/home.dart';
import 'package:portfolio_github/utility/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "${Constants.name} | ${Constants.title}",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "JosefinSans",
      ),
      home: Home(),
    );
  }
}
