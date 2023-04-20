import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class ThemeText {
  // main color for app theme
  static Color mainColor = const Color.fromARGB(221, 2, 18, 200);

  // text style for the main app bar

  static const TextStyle appBarText = TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  // app bar theme for main menu
  static AppBar mainAppBar = AppBar(
    backgroundColor: const Color.fromARGB(221, 2, 18, 200),
    title: const Text('SCSU Resources', style: appBarText),
  );

  // text style for the main menu buttons
  static const TextStyle mainButtonText = TextStyle(
      color: Color.fromARGB(221, 2, 18, 200),
      fontSize: 17,
      fontWeight: FontWeight.w800);

  static const TextStyle otherButtonText = TextStyle(
      color: Color.fromARGB(221, 2, 18, 200),
      fontSize: 20,
      fontWeight: FontWeight.w800);

  // text style for app bars within the app
  static const TextStyle otherAppBars =
      TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600);

  static CalendarStyle customCalendar = const CalendarStyle(
    rangeHighlightColor: Color.fromARGB(221, 2, 18, 200),
    markerDecoration: BoxDecoration(
        color: Color.fromARGB(210, 0, 166, 255), shape: BoxShape.circle),
    todayDecoration: BoxDecoration(
      color: Color.fromARGB(204, 199, 199, 199),
      shape: BoxShape.circle,
    ),
    selectedDecoration: BoxDecoration(
        color: Color.fromARGB(221, 2, 18, 200), shape: BoxShape.circle),
    outsideDaysVisible: true,
  );

  static const TextStyle mapKeyText = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);

  static const TextStyle filterHeader = TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5);
}

// HEX value of southern blue color #1a28c5
