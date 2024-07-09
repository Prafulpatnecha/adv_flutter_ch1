import 'dart:async';

import 'package:adv_flutter_ch1/controller/routes.dart';
import 'package:adv_flutter_ch1/utils/golble_value.dart';
import 'package:flutter/material.dart';

import '../utils/theme_data.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
      });
    },);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}