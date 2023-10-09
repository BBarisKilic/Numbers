import 'package:numbers/src/core/core.dart';

final class SaveThemeParams extends Params {
  const SaveThemeParams({
    required this.key,
    required this.value,
  });

  final String key;
  final String value;
}
