import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/features/number/number.dart';

void main() {
  group('NumberDto', () {
    test('supports value comparisons', () {
      expect(
        const NumberDto(
          info: 'test',
        ),
        const NumberDto(
          info: 'test',
        ),
      );
    });
  });
}
