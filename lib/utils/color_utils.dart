import 'package:flutter/material.dart';

class ColorUtils {
  static String formatColor(Color? color) {
    return color == null
        ? ''
        : 'RGB: ${color.red}, ${color.green}, ${color.blue}';
  }
}
