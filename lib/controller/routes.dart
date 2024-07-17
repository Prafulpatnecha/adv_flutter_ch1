import 'package:adv_flutter_ch1/contact_us_page/view/home/contact_page.dart';
import 'package:flutter/material.dart';
import '../change_theme/view/home/change_theme_page.dart';
import '../contact_us_page/view/home/contact_file_page.dart';
import '../home/home_page/homepage.dart';
import '../home/stepper/stepper_example.dart';
import '../home/stepper/stepper_page_work.dart';
import '../introscreen/view/home/intro_page.dart';
import '../quotesdata/view/home/quotes_data_page.dart';
class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=> const HomePage(),
    '/stepper':(context)=> const StepperPage(),
    '/stepper2':(context)=> const StepperPageWork(),
    '/provider':(context)=> const ChangeThemePage(),
    '/quotes':(context)=> const QuotesDataPage(),
    '/intro':(context)=> const IntroPage(),
    '/contact':(context)=> const ContactPage(),
    '/contact2':(context)=> const ContactFilePage(),
  };
}