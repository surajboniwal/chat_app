import 'package:flutter/material.dart';

class SizeUtil {
  static MediaQueryData data = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
  static Size size = data.size;

  static double textScaleFactor = data.textScaleFactor;

  static double wBlock = size.width / 360;
  static double hBlock = size.height / 360;
}
