import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/json_model.dart';

class JsonProvider extends ChangeNotifier
{
  List<JsonModel> jsonDataList=[];
  Future<List> jsonParsing()
  async {
    String json=await rootBundle.loadString('assets/json/todo.json');
    List todo= jsonDecode(json);
    return todo;
  }
  Future<void> fromList()
  async {
    List todo=await jsonParsing();
    jsonDataList=todo.map((e)=>JsonModel.fromMap(e)).toList();
    notifyListeners();
  }
  JsonProvider()
  {
    fromList();
  }
}