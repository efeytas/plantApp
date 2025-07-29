import 'package:flutter/material.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(color: colorScheme.onSurface.withOpacity(0.7), fontSize: 18.fSize, fontWeight: FontWeight.normal, letterSpacing: 0),
    bodyMedium: TextStyle(color: colorScheme.onSurface.withOpacity(0.7), fontSize: 16.fSize, letterSpacing: 0),
    titleLarge: TextStyle(color: colorScheme.onSurface, fontSize: 28.fSize, fontWeight: FontWeight.bold, letterSpacing: 0),
    titleMedium: TextStyle(color: colorScheme.onSurface, fontSize: 18.fSize, fontWeight: FontWeight.w600, letterSpacing: 0),
    titleSmall: TextStyle(color: colorScheme.onSurface, fontSize: 14.fSize, letterSpacing: 0),
    displaySmall: TextStyle(color: colorScheme.onSurface, fontSize: 34.fSize, fontWeight: FontWeight.bold, letterSpacing: 0),
  );
}
