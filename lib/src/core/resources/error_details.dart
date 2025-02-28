import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_details.freezed.dart';

@freezed
abstract class ErrorDetails with _$ErrorDetails {
  const factory ErrorDetails({
    required String error,
    required String message,
    required String stackTrace,
  }) = _ErrorDetails;
}
