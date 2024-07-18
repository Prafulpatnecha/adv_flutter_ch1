import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../main.dart';
import '../modal/modal_qoutes_page.dart';
import 'package:local_auth/local_auth.dart';
import 'dart:async';


class ProviderQuotesPage extends ChangeNotifier {
  bool introBool = false;
  int index = 0;
  late SharedPreferences sharedPreferences;
  bool isDark = false;
  List quotesAddingList = [];

  void addUserList(QuotesModal quotesModal) {
    quotesAddingList
        .insert(0, {'quote': quotesModal.quote, 'author': quotesModal.author});
    notifyListeners();
  }

  void quotesAddingJsonFile(List jsonList) {
    quotesAddingList.addAll(jsonList);
    // notifyListeners();
    // print(quotesAddingList);
  }

  void provideRemove(int index) {
    quotesAddingList.removeAt(index);
    notifyListeners();
  }

  void darkAndLightMode(bool value) {
    isDark = value;
    setTheme(isDark);
    notifyListeners();
  }

  Future<void> setTheme(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
    notifyListeners();
  }

  Future<void> getTheme() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isDark = sharedPreferences.getBool('theme') ?? false;
    notifyListeners();
  }

  ProviderQuotesPage() {
    isDark = theme;
    introBool = intro;
    getIntro();
    getTheme();
    notifyListeners();
  }

  void indexShare() {
    index++;
    notifyListeners();
  }

  void introBoolCheck() {
    introBool = true;
    introPageSkip(introBool);
    notifyListeners();
  }

  void introBoolCheckOn() {
    introBool = false;
    introPageSkip(introBool);
    notifyListeners();
  }

  Future<void> introPageSkip(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('intro', value);
  }

  Future<void> getIntro() async {
    sharedPreferences = await SharedPreferences.getInstance();
    introBool = sharedPreferences.getBool('intro') ?? false;
  }

  void phoneNumber() {
    Uri url = Uri.parse('tel: +91 6355199097');
    launchUrl(url);
  }

  void emailMethod() {
    Uri url = Uri(
      scheme: 'mailto',
      path: 'prafulpatnecha@gmail.com',
    );
    launchUrl(url);
  }

  void behanceWeb() {
    Uri url = Uri.parse('https://www.behance.net/prafulpatnecha');
    launchUrl(url);
  }

  void instaWeb() {
    Uri url = Uri.parse('https://www.instagram.com/prafulpatnecha');
    launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
  }

  void sportWeb() {
    Uri url = Uri.parse(
        'https://dribbble.com/shots/24532478-Spotify-All-Ears-on-you-2');
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  void githubWeb() {
    Uri url = Uri.parse('https://github.com/Prafulpatnecha');
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  void smsMethod() {
    Uri url = Uri.parse('sms: 6355199097');
    launchUrl(url);
  }

  final localAuth = LocalAuthentication();
  bool checkFinger = false;

  Future<void> fingerMethod() async {
    List<BiometricType> bioMetricCheck;
    try {
      bioMetricCheck = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
      return;
    }
    if (checkFinger) {
      return;
    }
    try {
      final fingerCheck = await localAuth.authenticate(
          localizedReason: 'Please authenticate to access secure data',
          options: AuthenticationOptions(
          stickyAuth: true,
          )
      );
      // setState()=>
      checkFinger=fingerCheck;
    } on PlatformException catch (e) {
      print(e);
    }
    notifyListeners();
  }
  void fingerFalse()
  {
    checkFinger=false;
  }
}
  var mounted=false;
