import 'package:flutter/material.dart';

class Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        margin: const EdgeInsets.only(top: 62, bottom: 22, left: 16, right: 16),
        width: 398,
        height: 848,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(0, 0, 0, 0.46),
        ),
      ),
    );
  }
}
