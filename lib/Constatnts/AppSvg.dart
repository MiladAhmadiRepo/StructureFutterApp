import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class AppSvg {
  AppSvg._();
  static String assetNameBasket = 'assets/images/icon_vectors/basket.svg';
  static String assetNameBack = 'assets/images/icon_vectors/back_left.svg';
  static String assetNameTrash = 'assets/images/icon_vectors/delete_trash.svg';
  static String assetNameClose = 'assets/images/icon_vectors/close_cross.svg';


  static Widget svgBasket = SvgPicture.asset(
    assetNameBasket,
    color: Colors.black,
    semanticsLabel: 'basket',
    width: 25,
    height: 25,
  );
  static Widget svgBack = SvgPicture.asset(
    assetNameBack,
    color: Colors.black,
    semanticsLabel: 'back',
    width: 20,
    height: 20,
  );
  static Widget svgTrash = SvgPicture.asset(
    assetNameTrash,
    color: Colors.black,
    semanticsLabel: 'trash',
    width: 20,
    height: 20,
  );
  static Widget svgClose = SvgPicture.asset(
    assetNameClose,
    color: Colors.black,
    semanticsLabel: 'close',
    width: 20,
    height: 20,
  );
}