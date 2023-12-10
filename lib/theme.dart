// /lib/theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.red,
  hintColor: Colors.blue,
  scaffoldBackgroundColor:
      Colors.white, // base background color for the screens
  brightness: Brightness.light,
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
  appBarTheme: AppBarTheme(
    color: Colors.red, // color of the app bar
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme:
        const IconThemeData(color: Colors.white), // color of icons on app bar
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.red,
  hintColor: Colors.blue,
  scaffoldBackgroundColor:
      Colors.black, // base background color for the screens
  brightness: Brightness.dark,
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
  appBarTheme: AppBarTheme(
    color: Colors.red,
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);
