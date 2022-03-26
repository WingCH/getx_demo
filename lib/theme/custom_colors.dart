import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomColor {
  static Color get color1 {
    return Get.context!.theme.brightness == Brightness.light
        ? Colors.deepOrange
        : Colors.green;
  }
}
