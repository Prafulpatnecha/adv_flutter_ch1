import 'package:flutter/material.dart';

import '../modal/modal_qoutes_page.dart';

class ProviderQuotesPage extends ChangeNotifier
{
  List quotesAddingList=[];
  void addUserList(QuotesModal quotesModal)
  {
    quotesAddingList.insert(0, {'quote':quotesModal.quote,'author':quotesModal.author});
    notifyListeners();
  }
  void quotesAddingJsonFile(List jsonList)
  {
    quotesAddingList.addAll(jsonList);
    notifyListeners();
    // print(quotesAddingList);
  }
  void provideRemove(int index)
  {
    quotesAddingList.removeAt(index);
    notifyListeners();
  }
}
