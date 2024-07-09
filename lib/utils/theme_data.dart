import 'package:flutter/material.dart';
class MyTheme
{
  // todo light Mode
  static ThemeData lightTheme=ThemeData(
    primaryColor: Colors.blue,
    // textTheme: TextTheme(titleSmall: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),
      centerTitle: true,
      elevation: 5,
      shadowColor: Colors.black54,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.deepPurpleAccent,
      primary: Colors.blue,
      onPrimary: Colors.white,
        secondary: Colors.white,
      onSecondary: Colors.blue,
      onSurface: Colors.black54,
      surface: Colors.white
    )
  );
  // todo dark mode
  static ThemeData darkTheme=ThemeData.dark().copyWith(
    primaryColor: Colors.blue.shade900,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue.shade900,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.white54,
      ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)),
    ),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          error: Colors.red,
          onError: Colors.deepPurpleAccent,
          primary: Colors.blue.shade900,
          onPrimary: Colors.blue.shade900,
          secondary: Colors.white,
          onSecondary: Colors.blue.shade900,
          onSurface: Colors.white54,
          surface: Colors.white,
      )
  );
}