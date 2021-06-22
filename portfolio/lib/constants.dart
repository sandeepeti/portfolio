import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF212121);
const Color kAccentColor = Color(0xFF69F0AE);
const Color kScaffoldColor = Color(0xFF212121);
const Color kShadowColor = Colors.black;
const Color kTextColorPrimary = Colors.white;
const Color kTextColorSecondary = Color(0xFF69F0AE);

const double kDefaultPadding = 16.0;
const double kDefaultIconSize = 32.0;

const String kDummyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Netus et malesuada fames ac turpis. A diam sollicitudin tempor id eu nisl nunc. Interdum varius sit amet mattis vulputate enim nulla. Quisque sagittis purus sit amet volutpat.';

class SizeConfig {
  static MediaQueryData? mediaQuery;
  static double? height;
  static double? width;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    blockSizeHorizontal = height! / 100;
    blockSizeVertical = width! / 100;
  }

  static double getAdaptiveFontSize(double fontSize) {
    ///
    /// the design is made on a width of 1920
    return fontSize * (width! / 1920);
  }
}
