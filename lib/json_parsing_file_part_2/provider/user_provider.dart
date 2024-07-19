
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/user_modal.dart';

class UserProvider extends ChangeNotifier
{
  List<UserModal> userJsonList=[];
  Future<void> jsonParsing()
  async {
    String json=await rootBundle.loadString('assets/json/user_json.json');
    List userList = jsonDecode(json);
    userJsonList=userList.map((e) => UserModal.fromUser(e),).toList();
  }
  UserProvider()
  {
    jsonParsing();
  }
}