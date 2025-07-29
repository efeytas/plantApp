import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/primary_colors.dart';
import 'package:plantapp/shared/theme/text_themes.dart';

String _appTheme = "primary";

class ThemeHelper {
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors(),
  };

  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme,
  };

  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  PrimaryColors _getThemeColors() {
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception("$_appTheme theme not found.");
    }
    return _supportedCustomColor[_appTheme]!;
  }

  ThemeData _getThemeData() {
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception("$_appTheme color scheme not found.");
    }
    final colorScheme = _supportedColorScheme[_appTheme]!;

    return ThemeData(
      colorScheme: colorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: appTheme.white,
      textTheme: TextThemes.textTheme(colorScheme),
      appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: appTheme.inputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  PrimaryColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
