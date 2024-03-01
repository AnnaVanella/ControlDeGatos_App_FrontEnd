import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;
  static const Color second = Colors.green;

  static final ThemeData lightTheme = ThemeData.light()
      .copyWith(primaryColor: Colors.orange, cardColor: Colors.green);
}
