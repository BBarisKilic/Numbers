// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/core.dart';

void main() {
  group('ErrorDetails', () {
    test('supports value comparisons', () {
      expect(
        ErrorDetails(
          error: 'error',
          message: 'message',
          stackTrace: 'stackTrace',
        ),
        equals(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
      );
    });
  });
}
