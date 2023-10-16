import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/core.dart';

void main() {
  group('GetThemeParams', () {
    test('extends from Params', () {
      expect(
        const GetThemeParams(key: 'test'),
        isA<Params>(),
      );
    });
  });
}
