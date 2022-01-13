// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamcolor,
        buttonColor: darkBluish,
        accentColor: Colors.black,
        fontFamily: GoogleFonts.openSans().fontFamily,
        appBarTheme: AppBarTheme(
          color: creamcolor,
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
    return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.black,
        canvasColor: darkCreamcolor,
        buttonColor: lightBluish,
        accentColor: Colors.white,
        fontFamily: GoogleFonts.openSans().fontFamily,
        appBarTheme: AppBarTheme(
          color: lightBluish,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }

  //colors
  static Color creamcolor = const Color(0xfff5f5f5);
  static Color darkCreamcolor = Vx.gray900;
  static Color darkBluish = const Color(0xff403b55);
  static Color lightBluish = Vx.indigo500;
}
