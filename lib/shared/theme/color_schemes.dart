import 'package:flutter/material.dart';

class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    primary: Color(0xFF3CA875), // Green button
    onPrimary: Colors.white,
    secondary: Color(0xFF54B58F),
    onSecondary: Colors.white,
    background: Color(0xFFF6FAF7),
    surface: Colors.white,
    onSurface: Color(0xFF333333),
    error: Color(0xFFB00020),
    onError: Colors.white,
    brightness: Brightness.light,
  );
}