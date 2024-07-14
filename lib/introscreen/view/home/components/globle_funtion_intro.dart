import 'package:adv_flutter_ch1/utils/colors_globle.dart';
import 'package:flutter/material.dart';

CircleAvatar createdNestedCircleAvatar() {
  return CircleAvatar(
    radius: 4.5,
    backgroundColor: greenDarkColor,
    child: const CircleAvatar(
      radius: 3,
      backgroundColor: Colors.white,
    ),
  );
}