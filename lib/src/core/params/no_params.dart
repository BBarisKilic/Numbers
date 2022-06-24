import 'package:freezed_annotation/freezed_annotation.dart';

part 'no_params.freezed.dart';

@freezed
abstract class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
