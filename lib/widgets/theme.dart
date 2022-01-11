// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.openSans().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }

  //colors
  static Color creamcolor = const Color(0xfff5f5f5);
  static Color darkBluish = const Color(0xff403b55);
}
