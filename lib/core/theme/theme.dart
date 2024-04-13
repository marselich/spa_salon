import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xfff4eed4),
    primary: const Color(0xfff4eed4),
    secondary: const Color(0xFF7E655E),
    onPrimary: const Color.fromARGB(255, 244, 241, 228),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    color: const Color(0xfff4eed4),
    titleTextStyle: GoogleFonts.ptSans(
      fontSize: 26,
      color: const Color(0xFF7E655E),
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color(0xfff4eed4),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 5,
    backgroundColor: Colors.grey.shade100,
    unselectedItemColor: Colors.black26,
    selectedItemColor: const Color(0xFF7E655E),
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
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      elevation: const MaterialStatePropertyAll(1),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: Color(0xFF7E655E)),
        ),
      ),
      foregroundColor: const MaterialStatePropertyAll(
        Color(0xFF7E655E),
      ),
      textStyle: MaterialStatePropertyAll(
        GoogleFonts.ptSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          // shadows: [
          //   const Shadow(
          //     blurRadius: 1,
          //     color: Colors.black26,
          //     offset: Offset(0.5, 0.5),
          //   ),
          // ],
        ),
      ),
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
      // стиль serviceItem
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF7E655E),
    ),
    labelMedium: GoogleFonts.ptSans(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.ptSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  ),
);
