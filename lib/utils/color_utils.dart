import 'package:flutter/material.dart';

class ColorUtils {
  static String formatColorRGB(Color? color) {
    return color == null
        ? ''
        : 'RGB: ${color.red}, ${color.green}, ${color.blue}';
  }
}
