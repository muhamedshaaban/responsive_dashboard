import 'package:flutter/material.dart';

class SizeConfig {
  static const tablet = 800;
  static const desktop = 1100;

  static late double height, width;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
