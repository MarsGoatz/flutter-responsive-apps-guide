import 'package:flutter/material.dart';

class ResponsiveUtil {
  static final kBreakPoint = 800;

  static bool isWideScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > kBreakPoint;
  }
}
