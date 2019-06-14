/// theme.dart
/// All the data for Pindery's theming, like colors and [ThemeData] and various styles.
///

library theme;

import 'package:flutter/material.dart';

// Primary colors
const Color primary = const Color(0xFF212121);
const Color primaryLight = const Color(0xFF484848);
const Color primaryDark = const Color(0xFF000000);

// Secondary colors
const Color secondary = const Color(0xFF2094e5);
const Color secondaryLight = const Color(0xFFffffff);
const Color secondaryDark = const Color(0xFF0469b7);

// Functional colors 
const Color dividerColor = const Color(0x2F000000);
const Color inputFieldColor = const Color(0x99FFFFFF);
const Color tileBackgroundColor = const Color(0xFF91ddfc);


ThemeData pinderyTheme = new ThemeData(
  primaryColor: primary,
  primaryColorLight: primaryLight,
  primaryColorDark: primaryDark,
  accentColor: secondary,
  buttonColor: secondaryLight,
  buttonTheme: new ButtonThemeData(textTheme: ButtonTextTheme.accent),
  brightness: Brightness.dark,
  backgroundColor: primaryLight,
  highlightColor: secondaryLight,
  errorColor: secondaryDark,
);

TextStyle pinderyTextStyle = new TextStyle(
    fontSize:14.0,
    color: Colors.black,
    textBaseline: TextBaseline.alphabetic,

);

const TextStyle labelStyle = const TextStyle(
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  fontSize: 17.0,
  color: inputFieldColor,
);

const TextStyle inputTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 17.0,
);
