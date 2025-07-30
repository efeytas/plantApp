import 'package:flutter/material.dart';

import 'package:plantapp/shared/theme/theme_helper.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

class CustomTextStyle {
  static get headline => theme.textTheme.titleLarge?.roboto.copyWith(
    fontWeight: FontWeight.normal,
  );

  static get bodyMedium => theme.textTheme.bodyMedium?.roboto;

  static get button => theme.textTheme.labelLarge?.roboto.copyWith(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 16.fSize,
    letterSpacing: 0,
  );

  static get bodySmall =>
      theme.textTheme.bodySmall?.roboto.copyWith(height: 1.5);

  static get boldHeadline =>
      theme.textTheme.titleLarge?.roboto.copyWith(fontWeight: FontWeight.w500);

  static get extraboldHeadline =>
      theme.textTheme.titleLarge?.roboto.copyWith(fontWeight: FontWeight.w800);

  static get lightHeadline =>
      theme.textTheme.titleLarge?.roboto.copyWith(fontWeight: FontWeight.w300);

  static get lightTitleMedium =>
      theme.textTheme.titleMedium?.roboto.copyWith(fontWeight: FontWeight.w300);

  static get titleMedium =>
      theme.textTheme.titleMedium?.roboto.copyWith(fontWeight: FontWeight.w500);

  static get informationText =>
      theme.textTheme.bodySmall?.roboto.copyWith(
        fontSize: 9.fSize,
        color: Colors.white.withValues(alpha: 0.7),
        fontWeight: FontWeight.w300,
      );

  static get titleLarge =>
      theme.textTheme.titleLarge?.roboto.copyWith(fontWeight: FontWeight.w500, fontSize: 24.fSize);
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(fontFamily: 'Roboto');
  }
}
