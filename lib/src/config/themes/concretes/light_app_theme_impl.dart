import 'package:flutter/material.dart';
import 'package:numbers/src/config/config.dart';
import 'package:sizer/sizer.dart';

/// An implementation of the [AppTheme] interface class that provides the light
/// theme.
class LightAppThemeImpl implements AppTheme {
  @override
  ThemeData get getData => _data;

  final ThemeData _data = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: const Color(0xFFF8F3F7),
    primaryColorDark: const Color(0xFFF8F3F7),
    primaryColorLight: const Color(0xFF181818),
    scaffoldBackgroundColor: const Color(0xFFF8F3F7),
    cardColor: const Color(0xFFF8F3F7),
    indicatorColor: const Color(0xB3181818),
    focusColor: const Color(0x66F8F3F7),
    dividerColor: const Color(0x80181818),
    splashColor: const Color(0x33181818),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF181818),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Color(0xFF181818),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF181818),
    ),
    appBarTheme: AppBarTheme(
      color: const Color(0xFFF8F3F7),
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF181818),
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
      bodyColor: const Color(0xFF181818),
      displayColor: const Color(0xFF181818),
    ),
    colorScheme: const ColorScheme.light()
        .copyWith(
          primary: const Color(0xFF838383),
          secondary: const Color(0xFFFF9E0B),
        )
        .copyWith(
          background: const Color(0xFFF8F3F7),
        ),
  );
}
