// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/features/number/number.dart';

void main() {
  group('GetNumberException', () {
    test('extends from NumbersServiceException', () {
      expect(
        GetNumberException('message', 'stackTrace'),
        isA<NumbersServiceException>(),
      );
    });
  });

  group('GetRandomNumberException', () {
    test('extends from NumbersServiceException', () {
      expect(
        GetRandomNumberException('message', 'stackTrace'),
        isA<NumbersServiceException>(),
      );
    });
  });
}
