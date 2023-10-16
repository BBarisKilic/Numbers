import 'package:flutter_test/flutter_test.dart';
import 'package:numbers/src/core/core.dart';

void main() {
  group('SaveThemeParams', () {
    test('is extends from Params', () {
      expect(
        const SaveThemeParams(key: 'key', value: 'value'),
        isA<Params>(),
      );
    });
  });
}
