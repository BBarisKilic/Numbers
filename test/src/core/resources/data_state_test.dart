// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/core.dart';

void main() {
  group('DataSuccess', () {
    test('is extends from DataState', () {
      expect(
        DataSuccess<String>('test'),
        isA<DataState<String>>(),
      );
    });

    test('supports value comparisons', () {
      expect(
        DataSuccess<String>('test'),
        equals(DataSuccess<String>('test')),
      );
    });
  });

  group('DataFailure', () {
    test('is extends from DataState', () {
      expect(
        DataFailure<String>(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
        isA<DataState<String>>(),
      );
    });

    test('supports value comparisons', () {
      expect(
        DataFailure<String>(
          ErrorDetails(
            error: 'error',
            message: 'message',
            stackTrace: 'stackTrace',
          ),
        ),
        equals(
          DataFailure<String>(
            ErrorDetails(
              error: 'error',
              message: 'message',
              stackTrace: 'stackTrace',
            ),
          ),
        ),
      );
    });
  });
}
