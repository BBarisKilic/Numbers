import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/features/number/number.dart';

void main() {
  group('GetNumberException', () {
    test('extends from NumbersServiceException', () {
      expect(
        const GetNumberException('message', 'stackTrace'),
        isA<NumbersServiceException>(),
      );
    });
  });

  group('GetRandomNumberException', () {
    test('extends from NumbersServiceException', () {
      expect(
        const GetRandomNumberException('message', 'stackTrace'),
        isA<NumbersServiceException>(),
      );
    });
  });
}
