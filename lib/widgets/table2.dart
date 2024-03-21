import 'package:flutter/material.dart';

Widget _buildTableRow(
    String category, String amount, String date, Color color) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    margin: EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(category, style: TextStyle(color: Colors.white)),
        Text(amount, style: TextStyle(color: Colors.white)),
        Text(date, style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}
