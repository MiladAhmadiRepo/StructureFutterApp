import 'package:flutter/material.dart';
import 'package:flutterapp2/utils/screenHelper.dart';

class AppTheme {
  AppTheme._();

  static const double defaultScreenWidth = 360;
  static const double defaultScreenHeight = 640;
  static const Color Green = Color(0xFF3a933b);
  static const Color Narenji = Color(0xFFffa500);
  static const Color LightGreen = Color(0xFFd8e9d8);
  static const Color Grey = Color(0xFF404040);
  static const Color MediumGrey = Color(0xFFa3a3a3);
  static const Color LightGrey = Color(0xFFe6e6e6);
  static const Color SemiWhite = Color(0xFFf2f2f2);
  static const Color PrimaryGreen = Color(0xFF3a933a);
  static const Color ButtonGrey = Color(0xFF3f3f3d);
  static const Color mainBlueDark = Color(0xFF1695a4);
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color backSort = Color(0xFFf7f8fa);
  static const Color borderSort = Color(0xFFcfd0d0);
  static const Color borderSortActive = Color(0xFFf4feeb);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color greyBorder = Color(0xFFf2f5f7);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color dark_grey = Color(0xFF313A44);
  static const Color light_grey = Color(0xFF707070);
  static const Color light_grey_hint = Color(0xFFb1b8ba);

  static const Color hint_back = Color(0xFFeeeeee);
  static const Color very_light_grey = Color(0xFFe6e7e8);
  static const Color deep_orange = Color(0xFFEF4438);

  static const Color red = Color(0xFFFF0000);
  static const Color darkText = Color(0xFF253840);
  static const Color black = Color(0xFF000000);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color lightGrey = Color(0xffeeeeee);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const Color gray8 = Color(0xFFE8E8E8);
  static const String fontName = 'Iransans';

  static TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(28)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(30)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(34)
        : ScreenUtil().setSp(38),
    color: darkText,
  );

  static TextStyle white_22 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(22),
    color: SemiWhite, // was black
  );
  static TextStyle green_12 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(12),
    color: Green, // was black
  );
  static TextStyle green_10 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(10),
    color: Green, // was black
  );
  static TextStyle green_12_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil().setSp(12),
    color: Green, // was black
  );
  static TextStyle red_12 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(12),
    color: Color(0xffff0000), // was black
  );
  static TextStyle green_12_underline = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(12),
    color: Green, // was black
  );
  static TextStyle green_14 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
    color: Green, // was black
  );
  static TextStyle green_14_underline = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
    decoration: TextDecoration.underline,
    color: Green,
  );
  static TextStyle green_14_medium = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w500,
    fontSize: ScreenUtil().setSp(14),
    color: Green, // was black
  );
  static TextStyle green_14_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(14),
    color: Green, // was black
  );
  static TextStyle green_16 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: Green, // was black
  );
  static TextStyle green_16_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(16),
    color: Green, // was black
  );
  static TextStyle green_16_underline = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: Green, // was black
  );
  static TextStyle grey_14_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(14),
    color: Grey, // was black
  );
  static TextStyle green_20_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(20),
    color: Green, // was black
  );
  static TextStyle green_18_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(18),
    color: Green, // was black
  );
  static TextStyle black_18 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil().setSp(18),
    color: black, // was black
  );
  static TextStyle grey_10 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(10),
    color: Grey, // was black
  );
  static TextStyle grey_12 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(12),
    color: Grey, // was black
  );
  static TextStyle grey_12_medium = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w500,
    fontSize: ScreenUtil().setSp(12),
    color: Grey, // was black
  );
  static TextStyle grey_16 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: Grey, // was black
  );
  static TextStyle semiWhite_16 = TextStyle( // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: SemiWhite, // was black
  );
  static TextStyle grey_16_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(16),
    color: Grey, // was black
  );
  static TextStyle grey_16_medium = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w500,
    fontSize: ScreenUtil().setSp(16),
    color: Grey, // was black
  );
  static TextStyle green_17_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(17),
    color: Green, // was black
  );
  static TextStyle grey_17_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(17),
    color: Grey, // was black
  );
  static TextStyle grey_17_medium = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w500,
    fontSize: ScreenUtil().setSp(17),
    color: Grey, // was black
  );
  static TextStyle green_18 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(18),
    color: Green, // was black
  );
  static TextStyle green_8 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(8),
    color: Green, // was black
  );
  static TextStyle grey_18 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(18),
      color: Grey // was black
  );
  static TextStyle grey_8 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(8),
      color: Grey // was black
  );
  static TextStyle white_12 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(12),
      color: SemiWhite // was black
  );
  static TextStyle white_14 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(14),
      color: SemiWhite // was black
  );
  static TextStyle white_16 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(16),
      color: SemiWhite // was black
  );
  static TextStyle white_10 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(10),
      color: SemiWhite // was black
  );
  static TextStyle white_14_medium = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w600,
      fontSize: ScreenUtil().setSp(14),
      color: SemiWhite // was black
  );
  static TextStyle mediumgrey_17_bold = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w700,
      fontSize: ScreenUtil().setSp(17),
      color: MediumGrey // was black
  );
  static TextStyle mediumgrey_12 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(12),
      color: MediumGrey // was black
  );
  static TextStyle mediumgrey_10 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(10),
      color: MediumGrey // was black
  );
  static TextStyle white_17_bold = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w700,
      fontSize: ScreenUtil().setSp(17),
      color: white // was black
  );

  //استفاده شده در کیف پول
  static TextStyle grey_14 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(14),
      color: Grey // was black
  );
  static TextStyle CustomTextFormFieldStyle = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      height: ScreenUtil().setHeight(2.5),
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(14),
      color: Grey // was black
  );
  static TextStyle green_38_bold = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w700,
      fontSize: ScreenUtil().setSp(38),
      color: Green // was black
  );
  static TextStyle grey_14_medium = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Grey // was black
  );
  static TextStyle mediumgrey_14_medium = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: MediumGrey // was black
  );

  static TextStyle grey_14_light = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(14),
      color: Grey // was black
  );

  //استفاده شده در کیف پول
  static TextStyle grey_13 = TextStyle(
    // Caption -> caption
      fontFamily: fontName,
      locale: Locale("fa", "IR"),
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(13),
      color: Grey // was black
  );
  static TextStyle white_18_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil().setSp(18),
    color: white, // was black
  );
  static TextStyle white_18 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(18),
    color: white, // was black
  );
  static TextStyle white_sweet = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil().setSp(14),
    color: white, // was black
  );
  static TextStyle subtitle_sweet = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: Color(0xff797979), // was black
  );
  static TextStyle title_sweet = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil().setSp(16),
    color: Grey, // was black
  );
  static TextStyle darkGreyStyle = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(18)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(20)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(24)
        : ScreenUtil().setSp(26),
    color: Grey, // was black
  );
  static TextStyle lightBlackStyle = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(18)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(20)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(24)
        : ScreenUtil().setSp(26),
    color: Colors.black38, // was black
  );
  static TextStyle lightgrey_14_light = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w300,
    fontSize: ScreenUtil().setSp(14),
    color: MediumGrey, // was black
  );
  static TextStyle lightgrey_14 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
    color: MediumGrey, // was black
  );
  static TextStyle lightgrey_14_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil().setSp(14),
    color: MediumGrey, // was black
  );
  static TextStyle lightgrey_12 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(12),
    color: MediumGrey, // was black
  );

  static TextStyle mediumGreenStyle = TextStyle(
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(18)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(20)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(24)
        : ScreenUtil().setSp(26),
    color: PrimaryGreen,
  );

  static TextStyle smallGreenStyle = TextStyle(
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(14)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(16)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(20)
        : ScreenUtil().setSp(22),
    color: PrimaryGreen,
  );
  static TextStyle white_20_bold = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(20)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(22)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(26)
        : ScreenUtil().setSp(28),
    color: white, // was black
  );
  static TextStyle white_22_custom_sp = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w700,
    fontSize: 22,
    color: Colors.white, // was black
  );
  static TextStyle black_24 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    locale: Locale("fa", "IR"),
    fontWeight: FontWeight.w600,
    fontSize: ScreenUtil.screenSize == ScreenSize.xs
        ? ScreenUtil().setSp(24)
        : ScreenUtil.screenSize == ScreenSize.sm
        ? ScreenUtil().setSp(26)
        : ScreenUtil.screenSize == ScreenSize.md
        ? ScreenUtil().setSp(30)
        : ScreenUtil().setSp(32),
    color: black, // was black
  );
  static TextStyle whiteStore_15 = TextStyle(
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2.0, 2.0),
          blurRadius: 3.0,
          color: Colors.black,
        ),
      ],
      fontWeight: FontWeight.w400,
      fontSize: ScreenUtil().setSp(15),
      color: Colors.white,
      fontFamily: fontName);
}
