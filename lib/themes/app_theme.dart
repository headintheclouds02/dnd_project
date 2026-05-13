import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dnd_project/themes/custom_colors.dart';
import 'package:dnd_project/themes/custom_text_theme.dart';

ThemeData appTheme({bool dark = false}) {
  CustomThemeData theme =
  dark ? CustomThemeData.dark() : CustomThemeData.light();
  return ThemeData(
    brightness: theme.brightness,
    extensions: [theme.colors, theme.styles],
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: theme.colors.primaryColor,
      selectionColor: theme.colors.primaryColor.withValues(alpha: 0.2),
      selectionHandleColor: theme.colors.primaryColor,
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: theme.colors.primaryColor,
    ),
    primaryColor: theme.colors.primaryColor,
  );
}

class CustomThemeData {
  final Brightness brightness;
  final CustomColors colors;
  final CustomTextStyle styles;

  CustomThemeData(this.brightness, this.colors, this.styles);

  factory CustomThemeData.light() {
    return CustomThemeData(
      Brightness.light,
      CustomColors.light(),
      CustomTextStyle(CustomColors.light()),
    );
  }

  factory CustomThemeData.dark() {
    return CustomThemeData(
      Brightness.dark,
      CustomColors.dark(),
      CustomTextStyle(CustomColors.dark()),
    );
  }
}
