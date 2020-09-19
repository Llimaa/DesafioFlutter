import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color.fromRGBO(243, 248, 254, 1);
const accentColor = const Color.fromRGBO(63, 71, 133, 1);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: Color.fromRGBO(243, 248, 254, 1),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
