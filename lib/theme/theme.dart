import 'package:flutter/material.dart';

class AppTheme {
  ThemeData dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xff121414),
    primaryColor: Color(0xff24786D),
    canvasColor: Color(0xff24786D),
    cardColor: Color(0xff121414),
    dividerColor: Color(0xffFFFFFF),
    splashColor: Color(0xff121414),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontSize: 18, color: Color(0xffFFFFFF), fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16, color: Color(0xff24786D)),
      bodySmall: TextStyle(fontSize: 14, color: Color(0xff797C7B)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff24786D),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xff797C7B),
      selectedItemColor: Color(0xffFFFFFF),
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        color: Color(0xff24786D),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Color(0xff797C7B),
      ),
    ),
  );

  static ThemeData light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xffFFFFFF),
    primaryColor: Color(0xff24786D),
    canvasColor: Color(0xff000000),
    cardColor: Color(0xffFFFFFF),
    dividerColor: Color(0xff24786D),
    splashColor: Color(0xffFFFFFF),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Color(0xff000000)),
      bodyMedium: TextStyle(fontSize: 16, color: Color(0xff24786D)),
      bodySmall: TextStyle(fontSize: 14, color: Color(0xff797C7B)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff24786D)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xffFFFFFF),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xff797C7B),
      selectedItemColor: Color(0xff24786D),
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        color: Color(0xff24786D),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        color: Color(0xff797C7B),
      ),
    ),
  );
}
