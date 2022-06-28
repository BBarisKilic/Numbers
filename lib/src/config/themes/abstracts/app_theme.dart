import 'package:flutter/material.dart';

enum AvailableTheme { light, dark }

abstract class AppTheme {
  ThemeData get getData;
}
