import 'package:flutter/material.dart';

class AppTextStyles {
  // Headings
  static const TextStyle headingXL = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
    color: Colors.white,
  );

  static const TextStyle headingL = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  // Body text
  static const TextStyle body = TextStyle(
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const TextStyle rbody = TextStyle(
    fontSize: 14,
    height: 1.5,
    // fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle bodyMuted = TextStyle(
    fontSize: 18,
    height: 1.5,
    color: Colors.white,
  );

  // Buttons / labels
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
