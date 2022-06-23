import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../abstracts/app_theme.dart';

class DarkAppThemeImpl implements AppTheme {
  @override
  ThemeData get getData => _data;

  final ThemeData _data = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: const Color(0xff181818),
    primaryColorDark: const Color(0xff181818),
    primaryColorLight: const Color(0xffF8F3F7),
    backgroundColor: const Color(0xff181818),
    scaffoldBackgroundColor: const Color(0xff181818),
    cardColor: const Color(0xff181818),
    indicatorColor: const Color(0xb3F8F3F7),
    focusColor: const Color(0x66181818),
    dividerColor: const Color(0x33F8F3F7),
    splashColor: const Color(0x33F8F3F7),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: Color(0xffF8F3F7)),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xffF8F3F7),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: const Color(0xff838383),
      secondary: const Color(0xffFF9E0B),
    ),
    iconTheme: const IconThemeData(color: Color(0xffF8F3F7)),
    appBarTheme: AppBarTheme(
      color: const Color(0xff181818),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xffF8F3F7),
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
      bodyColor: const Color(0xffF8F3F7),
      displayColor: const Color(0xffF8F3F7),
    ),
  );
}
