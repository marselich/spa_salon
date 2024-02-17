import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xfff4eed4),
    primary: const Color(0xfff4eed4),
  ),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    color: Color(0xfff4eed4),
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color(0xfff4eed4),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 5,
    backgroundColor: Colors.grey.shade100,
    unselectedItemColor: Colors.black26,
    selectedItemColor: const Color(0xfff4eed4),
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: const IconThemeData(
      shadows: [
        Shadow(
          blurRadius: 1,
          color: Colors.black26,
          offset: Offset(0.5, 0.5),
        ),
      ],
    ),
    selectedLabelStyle: const TextStyle(
      shadows: [
        Shadow(
          blurRadius: 1,
          color: Colors.black26,
          offset: Offset(0.5, 0.5),
        ),
      ],
    ),
  ),
  splashColor: Colors.transparent,
  textTheme: TextTheme(
    titleLarge: GoogleFonts.ptSans(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ptSans(
      fontSize: 14,
    ),
    labelLarge: GoogleFonts.ptSans(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: GoogleFonts.ptSans(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
);
