import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color primaryColor;
  final Color white;
  final Color text;
  final Color text2;
  final Color divider;
  final Color newCharacterButton;
  final Color enabledButton;
  final Color disabledButton;

  const CustomColors({
    required this.primaryColor,
    required this.white,
    required this.text,
    required this.text2,
    required this.divider,
    required this.newCharacterButton,
    required this.enabledButton,
    required this.disabledButton,
  });

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? primaryColor,
    Color? white,
    Color? text,
    Color? text2,
    Color? divider,
    Color? newCharacterButton,
    Color? enabledButton,
    Color? disabledButton,
  }) {
    return CustomColors(
      primaryColor: primaryColor ?? this.primaryColor,
      white: white ?? this.white,
      text: text ?? this.text,
      text2: text2 ?? this.text2,
      divider: divider ?? this.divider,
      newCharacterButton: newCharacterButton ?? this.newCharacterButton,
      enabledButton: enabledButton ?? this.enabledButton,
      disabledButton: disabledButton ?? this.disabledButton,
    );
  }

  factory CustomColors.light() {
    return const CustomColors(
      primaryColor: Color(0xFF967A83),
      white: Color(0xFFFFFFFF),
      text: Color(0xFF241C2D),
      text2: Color(0xFFFFFFFF),
      divider: Color(0xFFBC98FF),
      newCharacterButton: Color(0x66FFFFFF),
      enabledButton: Color(0xFF5F4F6B),
      disabledButton: Color(0x735F4F6B),
    );
  }

  factory CustomColors.dark() {
    return const CustomColors(
      primaryColor: Color(0xFF443154),
      white: Color(0xFFFFFFFF),
      text: Color(0xFFBC98FF),
      text2: Color(0xFF241C2D),
      divider: Color(0xFFBC98FF),
      newCharacterButton: Color(0x99967A83),
      enabledButton: Color(0xFF443154),
      disabledButton: Color(0x73443154),
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
    covariant ThemeExtension<CustomColors>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
