import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/app_color.dart';

ThemeData getThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(surfaceTintColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      labelMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w500),
      displayLarge: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
      displayMedium: GoogleFonts.lato(
          fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.darkGrey),
      displaySmall: GoogleFonts.lato(fontSize: 13, color: AppColors.darkGrey),
      bodyMedium: GoogleFonts.lato(fontSize: 24),
      bodySmall: GoogleFonts.lato(fontSize: 16),
      titleMedium: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
      titleSmall: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

ThemeData getDarkThemeData() {
  return ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      labelMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w500),
      displayLarge: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold),
      displayMedium:
          GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
      displaySmall: GoogleFonts.lato(fontSize: 14, color: AppColors.darkGrey),
      bodyMedium: GoogleFonts.lato(fontSize: 24),
      bodySmall: GoogleFonts.lato(fontSize: 16),
      titleMedium: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600),
      titleSmall: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
