import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF212121);
const Color kAccentColor = Color(0xFF69F0AE);
const Color kScaffoldColor = Color(0xFF212121);
const Color kShadowColor = Colors.black;
const Color kTextColorPrimary = Colors.white;
const Color kTextColorSecondary = Color(0xFF69F0AE);

const double kDefaultPadding = 16.0;
const double kDefaultIconSize = 32.0;

class SizeConfig {
  static MediaQueryData? mediaQuery;
  static double? height;
  static double? width;

  static init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
