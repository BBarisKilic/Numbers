import 'package:flutter/material.dart';

enum AvailableTheme {
  light,
  dark;

  String get key => toString().split('.').first;

  String get value => toString().split('.').last;
}

abstract interface class AppTheme {
  ThemeData get getData;
}
