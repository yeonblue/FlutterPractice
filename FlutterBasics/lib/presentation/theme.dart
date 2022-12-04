import 'package:flutter/material.dart';

class Apptheme {
  Apptheme._();

  static const _primaryColor = Colors.lightBlueAccent;
  static const _primaryColorDark = Colors.lightGreenAccent;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.light,
      ));
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorDark,
      )
  );


}