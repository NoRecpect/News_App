import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData applicationThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xff39A552),
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 35,
    ),
   iconButtonTheme: const IconButtonThemeData(style: ButtonStyle(
     iconColor: MaterialStatePropertyAll(Colors.white),
     iconSize: MaterialStatePropertyAll(35),
   ),
   ) ,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff39A552),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
        ),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w500,
        fontSize: 22,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.white,
      ),
    ),
  );
}
