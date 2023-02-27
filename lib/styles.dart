import 'package:flutter/material.dart';

abstract class ThemeText {
  // text style for the main app bar
  static const TextStyle appBarText = TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  // app bar theme for main menu
  static AppBar mainAppBar = AppBar(
    backgroundColor: Color.fromARGB(221, 2, 18, 200),
    title: const Text('SCSU Resources', style: appBarText),
  );

  // text style for the main menu buttons
  static const TextStyle mainButtonText = TextStyle(
      fontFamily: 'Montserrat',
      color: Color.fromARGB(221, 2, 18, 200),
      fontSize: 17,
      fontWeight: FontWeight.w800);

  // text style for app bars within the app
  static const TextStyle otherAppBars = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600);
}


// HEX value of southern blue color #1a28c5
