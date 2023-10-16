// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/features/number/number.dart';

void main() {
  group('Number', () {
    test('supports value comparisons', () {
      expect(
        Number(
          info: 'test',
        ),
        equals(
          Number(
            info: 'test',
          ),
        ),
      );
    });
  });
}
