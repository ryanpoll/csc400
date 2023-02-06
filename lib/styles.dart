import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle appBarText = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600);

  static const TextStyle mainButtonText = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600);

  static const IconData map_outlined =
      IconData(0xf1ae, fontFamily: 'MaterialIcons');

  static const IconData local_restaurant_rounded =
      IconData(0xf869, fontFamily: 'MaterialIcons');
}
