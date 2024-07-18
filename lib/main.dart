import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/controlling.dart';
import 'json_parsing_file/provider/json_provider.dart';
bool theme=false;
bool intro=false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  theme = sharedPreferences.getBool('theme') ?? false;
  intro = sharedPreferences.getBool('intro')?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderQuotesPage(),),
        ChangeNotifierProvider(create: (context) => JsonProvider(),),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}
