import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../abstracts/app_theme.dart';

class LightAppThemeImpl implements AppTheme {
  @override
  ThemeData get getData => _data;

  final ThemeData _data = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: const Color(0xffF8F3F7),
    primaryColorDark: const Color(0xffF8F3F7),
    primaryColorLight: const Color(0xff181818),
    backgroundColor: const Color(0xffF8F3F7),
    scaffoldBackgroundColor: const Color(0xffF8F3F7),
    cardColor: const Color(0xffF8F3F7),
    indicatorColor: const Color(0xb3181818),
    focusColor: const Color(0x66F8F3F7),
    dividerColor: const Color(0x80181818),
    splashColor: const Color(0x33181818),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: Color(0xff181818)),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xff181818),
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: const Color(0xff838383),
      secondary: const Color(0xffFF9E0B),
    ),
    iconTheme: const IconThemeData(color: Color(0xff181818)),
    appBarTheme: AppBarTheme(
      color: const Color(0xffF8F3F7),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff181818),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      ),
      headline2: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      subtitle2: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
    ).apply(
      bodyColor: const Color(0xff181818),
      displayColor: const Color(0xff181818),
    ),
  );
}
