import 'package:flutter/material.dart';
import 'package:numbers/src/config/config.dart';
import 'package:numbers/src/core/core.dart';

/// {@template light_app_theme}
/// An implementation of the [AppTheme] interface class that provides the light
/// theme.
/// {@endtemplate}
final class LightAppTheme implements AppTheme {
  /// {@macro light_app_theme}
  const LightAppTheme();

  static final _data = ThemeData(
    fontFamily: FontFamily.robotoMono,
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
    iconTheme: const IconThemeData(color: Color(0xFF181818)),
    appBarTheme: const AppBarTheme(
      color: Color(0xFFF8F3F7),
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Color(0xFF181818),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      displayMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      displaySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    ).apply(
      bodyColor: const Color(0xFF181818),
      displayColor: const Color(0xFF181818),
    ),
    colorScheme: const ColorScheme.light()
        .copyWith(
          primary: const Color(0xFF838383),
          secondary: const Color(0xFFFF9E0B),
        )
        .copyWith(surface: const Color(0xFFF8F3F7)),
  );

  @override
  ThemeData get getData => _data;
}
