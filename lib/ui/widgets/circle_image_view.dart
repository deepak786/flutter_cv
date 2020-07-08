import 'package:flutter/material.dart';

class CircleImageView extends StatelessWidget {
  final String image;
  final double size;

  CircleImageView(this.image, {this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.grey),
        image: new DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
