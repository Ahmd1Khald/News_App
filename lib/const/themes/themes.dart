import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

var lightMood = ThemeData(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
    color: Colors.white,
    elevation: 0,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.black,
    selectedItemColor: Colors.deepOrange,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w800,
    ),
  ),
);

var darkMood = ThemeData(
  backgroundColor: HexColor('#212F3D'),
  scaffoldBackgroundColor: HexColor('#212F3D'),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('#212F3D'),
    titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('#212F3D'),
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: HexColor('#212F3D'),
      selectedItemColor: Colors.white,
      unselectedItemColor: HexColor('#7F8C8D'),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w800)),
);
