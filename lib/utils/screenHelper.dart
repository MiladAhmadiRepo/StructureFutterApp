/*
 * Created by 李卓原 on 2018/9/29.
 * email: zhuoyuan93@gmail.com
 */

import 'package:flutter/material.dart';

enum ScreenSize { xs, sm, md, lg }

_ScreenSizetoString(ScreenSize screenSize) {
  switch (screenSize) {
    case ScreenSize.xs:
      return "xs";
    case ScreenSize.sm:
      return "sm";
    case ScreenSize.md:
      return "md";
    case ScreenSize.lg:
      return "lg";
    default:
      return "xs";
  }
}

class ScreenUtil {
  static ScreenUtil instance = new ScreenUtil();
  double width;
  double height;

  bool allowFontScaling;

  static MediaQueryData _mediaQueryData;
  static double _screenWidth;
  static double _screenHeight;
  static double _pixelRatio;
  static double _statusBarHeight;

  static double _bottomBarHeight;

  static double _textScaleFactor;

  ScreenUtil({
    this.width = 601,
    this.height = 913.4,
    this.allowFontScaling = false,
  });

  static ScreenUtil getInstance() {
    return instance;
  }

  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width > mediaQuery.size.height
        ? mediaQuery.size.height
        : mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = _mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  static MediaQueryData get mediaQueryData => _mediaQueryData;

  static double get textScaleFactory => _textScaleFactor;

  static ScreenSize get screenSize => _screenWidth < 768
      ? ScreenSize.xs
      : _screenWidth < 992
      ? ScreenSize.sm
      : _screenWidth < 1200 ? ScreenSize.md : ScreenSize.lg;

  static double get pixelRatio => _pixelRatio;

  static double get screenWidthDp => _screenWidth;

  static double get screenHeightDp => _screenHeight;

  static double get screenWidth => _screenWidth;

  static double get screenHeight => _screenHeight;

  static double get statusBarHeight => _statusBarHeight;

  static double get bottomBarHeight => _bottomBarHeight;

  double get scaleWidth => _screenWidth / instance.width;

  double get scaleHeight => _screenHeight / instance.height;

  num setWidth(num width) => width * scaleWidth;

  num setHeight(num height) => height * scaleHeight;

  num setSp(num fontSize) => allowFontScaling
      ? setWidth(fontSize)
      : setWidth(fontSize) / _textScaleFactor;
}
