import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/controlling.dart';
bool theme=false;
bool intro=false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  theme = sharedPreferences.getBool('theme') ?? false;
  intro = sharedPreferences.getBool('intro')?? false;
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderQuotesPage(),
      builder: (context, child) => const MyApp(),
    ),
  );
}
