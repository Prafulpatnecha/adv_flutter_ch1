import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';
import '../modal/modal_qoutes_page.dart';

class ProviderQuotesPage extends ChangeNotifier
{
  bool introBool=false;
  int index=0;
  late SharedPreferences sharedPreferences;
  bool isDark=false;
  List quotesAddingList=[];
  void addUserList(QuotesModal quotesModal)
  {
    quotesAddingList.insert(0, {'quote':quotesModal.quote,'author':quotesModal.author});
    notifyListeners();
  }
  void quotesAddingJsonFile(List jsonList)
  {
    quotesAddingList.addAll(jsonList);
    // notifyListeners();
    // print(quotesAddingList);
  }
  void provideRemove(int index)
  {
    quotesAddingList.removeAt(index);
    notifyListeners();
  }
  void darkAndLightMode(bool value)
  {
    isDark=value;
    setTheme(isDark);
    notifyListeners();
  }
  Future<void> setTheme(bool value)
  async {
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
    notifyListeners();
  }
  Future<void> getTheme()
  async {
    sharedPreferences=await SharedPreferences.getInstance();
    isDark=sharedPreferences.getBool('theme') ?? false;
    notifyListeners();
  }
  ProviderQuotesPage()
  {
    isDark=theme;
    introBool=intro;
    getIntro();
    getTheme();
    notifyListeners();
  }
  void indexShare()
  {
    index++;
    notifyListeners();
  }
  void introBoolCheck()
  {
    introBool=true;
    introPageSkip(introBool);
    notifyListeners();
  }
  void introBoolCheckOn()
  {
    introBool=false;
    introPageSkip(introBool);
    notifyListeners();
  }
  Future<void> introPageSkip(bool value)
  async {
    sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setBool('intro', value);
  }
  Future<void> getIntro()
  async {
    sharedPreferences=await SharedPreferences.getInstance();
    introBool=sharedPreferences.getBool('intro')?? false;
  }
}
