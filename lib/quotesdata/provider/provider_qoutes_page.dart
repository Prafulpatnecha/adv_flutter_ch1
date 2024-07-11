import 'package:flutter/material.dart';

import '../modal/modal_qoutes_page.dart';

class ProviderQuotesPage extends ChangeNotifier
{
  List quotesAddingList=[];
  void addUserList(QuotesModal quotesModal)
  {
    quotesAddingList.insert(0, quotesModal);
    notifyListeners();
  }
  void quotesAddingJsonFile(List jsonList)
  {
    quotesAddingList.addAll(jsonList);
    // print(quotesAddingList);
  }
    // void provideModal()
    // {
    //
    //   notifyListeners();
    // }
}
