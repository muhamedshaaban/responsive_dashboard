import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: const Color(0xff064061),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: const Color(0xff064061),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        color: const Color(0xffFFFFFF),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: const Color(0xff064061),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        color: const Color(0xff064061),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        color: const Color(0xff4EB7F2),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        color: const Color(0xffffffff),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold20(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        color: const Color(0xff4EB7F2),
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        color: const Color(0xffAAAAAA),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        fontSize: getAdaptiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: const Color(0xff4EB7F2),
        fontWeight: FontWeight.bold);
  }
}

double getAdaptiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFcator(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  print(
      'fontsize= $fontSize, lm = $lowerLimit , ul = $upperLimit, resp = ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFcator(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 900;
  } else {
    return width / 1920;
  }
}
