import 'package:flutter/material.dart';
import '../main.dart';


class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith();
  static ThemeData customLightTheme = ThemeData.light().copyWith();

  static ThemeData? initialTheme = sharedPref.getString("theme") == null
      ? Themes.customLightTheme
      : Themes.customDarkTheme;

  void changeTheme(ThemeData theme) {
    ThemeData themeData = theme;
    sharedPref.setString(
      "theme",
      themeData.toString(),
    );
  }
}
