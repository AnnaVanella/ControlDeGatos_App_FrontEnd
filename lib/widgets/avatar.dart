import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String assetImagePath;
  final double radius;
  final double borderWidth;
  final Color borderColor;

  const CircularAvatar({
    Key? key,
    required this.assetImagePath,
    this.radius = 100.0,
    this.borderWidth = 2.0,
    this.borderColor = const Color(0xFF149A61),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: CircleAvatar(
        radius: radius -
            borderWidth, // Resta el ancho del borde del radio del avatar
        backgroundImage: AssetImage(assetImagePath),
      ),
    );
  }
}
