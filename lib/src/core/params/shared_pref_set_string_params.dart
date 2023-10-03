import 'package:numbers/src/core/core.dart';

final class SharedPrefSetStringParams extends Params {
  const SharedPrefSetStringParams({
    required this.key,
    required this.value,
  });

  final String key;
  final String value;
}
