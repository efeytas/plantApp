import 'package:flutter/material.dart';

import 'package:plantapp/shared/theme/theme_helper.dart';

class CustomTextStyle {
  static get headline => theme.textTheme.titleLarge?.roboto.copyWith(fontWeight: FontWeight.normal);

  static get bodyMedium => theme.textTheme.bodyMedium?.roboto;
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(fontFamily: 'Roboto');
  }
}
