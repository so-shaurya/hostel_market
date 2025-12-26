import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xFFFF6B35);
  static const Color background = Color(0xFF0A0A0A);
  static const Color card = Color(0xFF1A1A1A);
  static const Color text = Colors.white60;
}

const kTextHeadline = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const kTextNormal = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

enum prodFor { hostel, college }

const kCardName = TextStyle(color: Colors.white, fontSize: 18);
const kCardTag = TextStyle(color: AppColor.text, fontSize: 18);
const kCardPrice = TextStyle(
  color: AppColor.primary,
  fontSize: 35,
  fontWeight: FontWeight.bold,
);
