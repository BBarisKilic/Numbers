import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_pref_set_string_params.freezed.dart';

@freezed
abstract class SharedPrefSetStringParams with _$SharedPrefSetStringParams {
  const factory SharedPrefSetStringParams({
    required String key,
    required String value,
  }) = _SharedPrefSetStringParams;
}
