import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class Themes {
  static ThemeData themeData({
    required bool isDarkTheme,
    required BuildContext context,
  }) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? MyColors.backGroundColor : MyColors.whiteColor,

      focusColor: MyColors.buttonsColor,
      textTheme: TextTheme(
        displayMedium: GoogleFonts.cairo(
          color: isDarkTheme ? Colors.black : MyColors.whiteColor,
          fontWeight: FontWeight.w900,
          fontSize: 30,
        ),
        bodyMedium: GoogleFonts.cairo(
          color: isDarkTheme ? MyColors.whiteColor : Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        titleLarge: GoogleFonts.cairo(
          color: isDarkTheme ? MyColors.whiteColor : Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        bodySmall: GoogleFonts.cairo(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        labelLarge: GoogleFonts.cairo(
          color: isDarkTheme ? MyColors.whiteColor : Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        bodyLarge: GoogleFonts.cairo(
          color: isDarkTheme ? MyColors.whiteColor : Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      // cardColor:
      //     isDarkTheme ? AppColors.dartCardColor : AppColors.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      iconTheme: IconThemeData(
        color: isDarkTheme ? MyColors.grayColor : Colors.black,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: MyColors.buttonsColor,
      ),
      bottomNavigationBarTheme: isDarkTheme
          ? BottomNavigationBarThemeData(
              backgroundColor: MyColors.backGroundColor,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800))
          : const BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.blue,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
        backgroundColor:
            isDarkTheme ? MyColors.backGroundColor : MyColors.whiteColor,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   filled: true,
      //   contentPadding: const EdgeInsets.all(10),
      //   enabledBorder: OutlineInputBorder(
      //     borderSide: const BorderSide(
      //       width: 1,
      //       color: Colors.transparent,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       width: 1,
      //       color: isDarkTheme ? Colors.white : Colors.black,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   errorBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       width: 1,
      //       color: Theme.of(context).colorScheme.error,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      //   focusedErrorBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       width: 1,
      //       color: Theme.of(context).colorScheme.error,
      //     ),
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      // ),
    );
  }
}
