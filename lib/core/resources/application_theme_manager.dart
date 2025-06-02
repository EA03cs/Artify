import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_two/core/resources/theme_color.dart';


class ApplicationThemeManager {
  static final ThemeData themeData = ThemeData(
    canvasColor: AppColors.whiteColor,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,

    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        color: AppColors.blackColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: AppColors.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.poppins(
        color: AppColors.whiteColor,
        fontSize: 12,
        fontWeight: FontWeight.w200,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.blackColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
      selectedIconTheme: const IconThemeData(
        size: 30,
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey[600],
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      sizeConstraints: const BoxConstraints(
        maxHeight: 100,
        maxWidth: 100,
        minHeight: 73,
        minWidth: 73,
      ),
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
        side: const BorderSide(
          color: AppColors.whiteColor,
          width: 5,
        ),
      ),
    ),

    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.whiteColor,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
    ),

    iconTheme: const IconThemeData(
      color: AppColors.blackColor,
    ),
  );
}
