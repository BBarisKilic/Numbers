import 'package:flutter/material.dart';

/// An enum that represents the available themes.
///
/// ```dart
/// final theme = AvailableTheme.light;
/// ```
enum AvailableTheme {
  /// The [light] theme.
  light,

  /// The [dark] theme.
  dark;

  /// Returns the name of the enum -> `AvailableTheme`.
  String get key => toString().split('.').first;

  /// Returns the value of the enum. Possible values are `light` and `dark`.
  String get value => toString().split('.').last;
}

/// An abstract interface class that blueprints of the concrete theme
/// implementations.
abstract interface class AppTheme {
  /// Returns the [ThemeData] of the concrete theme implementations.
  ThemeData get getData;
}
