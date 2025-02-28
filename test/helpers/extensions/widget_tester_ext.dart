import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/l10n/l10n.dart';

extension WidgetTesterExt on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
