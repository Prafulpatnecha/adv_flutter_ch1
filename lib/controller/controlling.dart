
import 'package:adv_flutter_ch1/controller/routes.dart';
import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Timer.periodic(const Duration(milliseconds: 1), (timer) {
    //   setState(() {
    //   });
    // },);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      themeMode: Provider.of<ProviderQuotesPage>(context).isDark?ThemeMode.dark:ThemeMode.light,
      initialRoute: (Provider.of<ProviderQuotesPage>(context).introBool==false)?'/intro':'/',
      routes: AppRoutes.routes,
    );
  }
}