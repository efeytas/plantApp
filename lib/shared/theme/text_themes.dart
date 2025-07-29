import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onSurface.withOpacity(0.7),
          fontSize: 14,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 14,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
      );
}
