import 'dart:convert';

import 'package:adv_flutter_ch1/post_json_folder/modal/post_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;
  Future<void> initPost()
  async {
    String json=await rootBundle.loadString('assets/json/post_json.json');
    final response= jsonDecode(json);
    postModal=PostModal.fromJson(response);
    notifyListeners();
  }
  PostProvider()
  {
    initPost();
  }
}