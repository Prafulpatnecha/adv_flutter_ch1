import 'package:adv_flutter_ch1/contact_us_page/view/home/contact_page.dart';
import 'package:adv_flutter_ch1/json_parsing_file_part_2/view/home/user_screen_page.dart';
import 'package:flutter/material.dart';
import '../change_theme/view/home/change_theme_page.dart';
import '../contact_us_page/view/home/contact_file_page.dart';
import '../gallery_photo_file/view/home/gallery_photo_page.dart';
import '../gallery_photo_file/view/lock_screen/lock_page.dart';
import '../gallery_photo_file/view/secure_folder/secure_page.dart';
import '../home/home_page/homepage.dart';
import '../home/stepper/stepper_example.dart';
import '../home/stepper/stepper_page_work.dart';
import '../introscreen/view/home/intro_page.dart';
import '../json_parsing_file/view/home/json_parsing_page.dart';
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
    '/photo':(context)=> const GalleryPhotoPage(),
    '/lock':(context)=> const LockPage(),
    '/secure':(context)=> const SecurePage(),
    '/jsonUse':(context)=> const JsonParsingPage(),
    '/jsonUser':(context)=> const UserScreenPage(),
  };
}