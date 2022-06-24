import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_request_params.freezed.dart';

@freezed
abstract class NumberRequestParams with _$NumberRequestParams {
  const factory NumberRequestParams({required int number}) =
      _NumberRequestParams;
}
