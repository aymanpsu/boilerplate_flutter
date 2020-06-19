import 'package:flutter/material.dart' show Color;

class HexColor extends Color {

  static int _getColorFromHex(String hexColor) {
    int zero = 0;
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return int.parse("0x$hexColor");
    }
    return zero;
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}