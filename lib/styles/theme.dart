import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

final ButtonStyle _globalButtonStyle = ButtonStyle(
  //  backgroundColor: MaterialStateProperty.all<Color>(colorPrimary),
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
);

ThemeData theme = ThemeData(
  useMaterial3: true,
  // Define the default brightness and colors.
  colorScheme: ColorScheme.fromSeed(
    seedColor: colorPrimary,
    // ···
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: colorBackground,
  fontFamily: GoogleFonts.dmSans().fontFamily,
  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    titleLarge: TextStyle(
        color: colorTextHeading, fontSize: 20, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        color: colorTextHeading, fontSize: 16, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(
        color: colorTextHeading, fontSize: 14, fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(color: colorTextBody, fontSize: 14),
    bodyMedium: TextStyle(color: colorTextBody, fontSize: 12),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: _globalButtonStyle,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: _globalButtonStyle,
  ),
);
