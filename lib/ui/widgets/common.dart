import 'package:flutter/material.dart';

Widget textLabel(text, fontSize, fontWeight, color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}