import 'package:flutter/material.dart';

class ProviderMethod extends ChangeNotifier
{
  bool isMode=false;
  void themeModeSet()
  {
    isMode=!isMode;
    notifyListeners();
  }
}