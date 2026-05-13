import 'package:flutter/material.dart';
import 'package:dnd_project/themes/custom_colors.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  final CustomColors _colors;

  /* H0 */
  final TextStyle h0;

  /* H1 */
  final TextStyle h1;
  final TextStyle h1White;

  /* H2 */
  final TextStyle h2;
  final TextStyle h2PrimaryColor;
  final TextStyle h2White;

  /* H3 */
  final TextStyle h3;
  final TextStyle h3PrimaryColor;
  final TextStyle h3White;

  /* H4 */
  final TextStyle h4;
  final TextStyle h4PrimaryColor;
  final TextStyle h4White;

  /* H5 */
  final TextStyle h5;
  final TextStyle h5PrimaryColor;
  final TextStyle h5White;

  /* H6 */
  final TextStyle h6;

  CustomTextStyle(
      this._colors, {
        TextStyle h0 = const TextStyle(fontSize: 50),
        TextStyle h1 = const TextStyle(fontSize: 28),
        TextStyle h2 = const TextStyle(fontSize: 24),
        TextStyle h3 = const TextStyle(fontSize: 22),
        TextStyle h4 = const TextStyle(fontSize: 16),
        TextStyle h5 = const TextStyle(fontSize: 14),
        TextStyle h6 = const TextStyle(fontSize: 11),
        TextStyle avenirFontFamily = const TextStyle(fontFamily: 'Avenir'),
      })  : h1 = h1.merge(avenirFontFamily),
        h2 = h2.merge(avenirFontFamily),
        h3 = h3.merge(avenirFontFamily),
        h4 = h4.merge(avenirFontFamily),
        h5 = h5.merge(avenirFontFamily),
        h6 = h6.merge(avenirFontFamily),
        h0 = h0.merge(avenirFontFamily),
        h1White =
        h1.merge(avenirFontFamily).copyWith(color: _colors.white),
        h2White =
        h2.merge(avenirFontFamily).copyWith(color: _colors.white),
        h2PrimaryColor =
        h2.merge(avenirFontFamily).copyWith(color: _colors.primaryColor),
        h3PrimaryColor =
        h3.merge(avenirFontFamily).copyWith(color: _colors.primaryColor),
        h3White =
        h3.merge(avenirFontFamily).copyWith(color: _colors.white),
        h4White =
        h4.merge(avenirFontFamily).copyWith(color: _colors.white),
        h4PrimaryColor =
        h4.merge(avenirFontFamily).copyWith(color: _colors.primaryColor),
        h5PrimaryColor =
        h5.merge(avenirFontFamily).copyWith(color: _colors.primaryColor),
        h5White =
        h5.merge(avenirFontFamily).copyWith(color: _colors.white);

  @override
  CustomTextStyle lerp(ThemeExtension<CustomTextStyle>? other, double t) {
    if (other == null) return this;

    if (other is CustomTextStyle) {
      return CustomTextStyle(
        _colors,
        h0: TextStyle.lerp(h0, other.h0, t)!,
        h1: TextStyle.lerp(h1, other.h1, t)!,
        h2: TextStyle.lerp(h2, other.h2, t)!,
        h3: TextStyle.lerp(h3, other.h3, t)!,
        h4: TextStyle.lerp(h4, other.h4, t)!,
        h5: TextStyle.lerp(h5, other.h5, t)!,
      );
    }
    return this;
  }

  @override
  CustomTextStyle copyWith({
    TextStyle? h0,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
  }) {
    return CustomTextStyle(
      _colors,
      h0: h1 ?? this.h0,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h4 ?? this.h5,
    );
  }
}
