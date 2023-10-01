import 'package:flutter/material.dart';
import 'package:numbers/src/config/config.dart';
import 'package:sizer/sizer.dart';

/// An implementation of the [AppTheme] interface class that provides the dark
/// theme.
class DarkAppThemeImpl implements AppTheme {
  @override
  ThemeData get getData => _data;

  final _data = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: const Color(0xFF181818),
    primaryColorDark: const Color(0xFF181818),
    primaryColorLight: const Color(0xFFF8F3F7),
    scaffoldBackgroundColor: const Color(0xFF181818),
    cardColor: const Color(0xFF181818),
    indicatorColor: const Color(0xB3F8F3F7),
    focusColor: const Color(0x66181818),
    dividerColor: const Color(0x33F8F3F7),
    splashColor: const Color(0x33F8F3F7),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFFF8F3F7),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xFFF8F3F7),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFFF8F3F7),
    ),
    appBarTheme: AppBarTheme(
      color: const Color(0xFF181818),
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xFFF8F3F7),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      displaySmall: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      ),
    ).apply(
      bodyColor: const Color(0xFFF8F3F7),
      displayColor: const Color(0xFFF8F3F7),
    ),
    colorScheme: const ColorScheme.dark()
        .copyWith(
          primary: const Color(0xFF838383),
          secondary: const Color(0xFFFF9E0B),
        )
        .copyWith(
          background: const Color(0xFF181818),
        ),
  );
}
