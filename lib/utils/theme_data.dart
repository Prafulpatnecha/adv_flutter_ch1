import 'package:flutter/material.dart';
class MyTheme
{
  // todo light Mode
  static ThemeData lightTheme=ThemeData(
    primaryColor: Colors.blue,
    // textTheme: TextTheme(titleSmall: TextStyle(color: Colors.white)),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),
      centerTitle: true,
      elevation: 5,
      shadowColor: Colors.black54,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)),
    ),
    colorScheme: const ColorScheme(
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
        titleTextStyle: const TextStyle(color: Colors.white,fontSize: 22),
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

class MyTheme2
{
  // todo light Mode
  static ThemeData lightThemes=ThemeData(
      primaryColor: Colors.white,
      // textTheme: TextTheme(titleSmall: TextStyle(color: Colors.black)),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),
        centerTitle: true,
        elevation: 5,
        // shadowColor: Colors.black54,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.black54)),
      ),
      switchTheme: SwitchThemeData(trackColor: WidgetStateProperty.all(Colors.purple.shade50),trackOutlineColor: WidgetStateProperty.all(Colors.purple),thumbColor: WidgetStateProperty.all(Colors.purple)),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          error: Colors.red,
          onError: Colors.white,
          primary: Colors.black,
          onPrimary: Colors.purple,
          secondary: Colors.green,
          onSecondary: Colors.blue,
          onSurface: Colors.red,
          surface: Colors.purple,
      )
  );
  // todo dark mode
  static ThemeData darkThemes=ThemeData.dark().copyWith(
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),
        centerTitle: true,
        elevation: 5,
        // shadowColor: Colors.white54,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.white)),
      ),
      // switchTheme: SwitchThemeData(trackColor: WidgetStateProperty.all(Colors.orangeAccent)),
      switchTheme: SwitchThemeData(trackColor: WidgetStateProperty.all(Colors.orange.shade50),trackOutlineColor: WidgetStateProperty.all(Colors.orangeAccent),thumbColor: WidgetStateProperty.all(Colors.orangeAccent)),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        error: Colors.red,
        onError: Colors.white,
        primary: Colors.white,
        onPrimary: Colors.orangeAccent,
        secondary: Colors.blue,
        onSecondary: Colors.pinkAccent,
        onSurface: Colors.yellow,
        surface: Colors.orangeAccent,
      )
  );
}