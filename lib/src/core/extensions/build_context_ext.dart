import 'package:flutter/material.dart';

/// Extension for [BuildContext] to add more capabilities to it.
extension BuildContextExt on BuildContext {
  /// Provides direct access to theme data.
  ThemeData get theme => Theme.of(this);

  /// Provides direct access to text theme.
  TextTheme get textTheme => theme.textTheme;

  /// Provides direct access to color scheme.
  ColorScheme get colorScheme => theme.colorScheme;

  /// Provides direct access to the height of the screen.
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Provides direct access to the width of the screen.
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
