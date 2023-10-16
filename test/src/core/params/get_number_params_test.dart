import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/core.dart';

void main() {
  group('GetNumberParams', () {
    test('is extends from Params', () {
      expect(
        const GetNumberParams(number: 0),
        isA<Params>(),
      );
    });
  });
}
