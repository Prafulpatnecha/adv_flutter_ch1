import 'package:flutter/material.dart';

import '../home/home_page/homepage.dart';
import '../home/stepper/stepper_example.dart';
import '../home/stepper/stepper_page_work.dart';
class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=> const HomePage(),
    '/stepper':(context)=> const StepperPage(),
    '/stepper2':(context)=> const StepperPageWork(),
  };
}