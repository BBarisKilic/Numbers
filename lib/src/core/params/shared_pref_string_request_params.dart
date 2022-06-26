import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_pref_string_request_params.freezed.dart';

@freezed
abstract class SharedPrefStringRequestParams
    with _$SharedPrefStringRequestParams {
  const factory SharedPrefStringRequestParams({required String key}) =
      _SharedPrefStringRequestParams;
}
