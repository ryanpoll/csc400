import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle appBarText = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600);

  static const TextStyle mainButtonText = TextStyle(
      fontFamily: 'Montserrat',
      color: Color.fromARGB(221, 2, 18, 200),
      fontSize: 17,
      fontWeight: FontWeight.w800);
}
