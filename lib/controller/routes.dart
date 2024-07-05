import 'package:flutter/material.dart';

import '../home/home_page/homepage.dart';
class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=> const HomePage(),
  };
}