import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData applicationThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xff39A552),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff39A552),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),

        ),
      )
    ),
  );
}
