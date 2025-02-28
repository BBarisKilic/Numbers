import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';

part 'data_state.freezed.dart';

@freezed
sealed class DataState<T> with _$DataState<T> {
  const factory DataState.dataSuccess(T data) = DataSuccess<T>;
  const factory DataState.dataFailure(ErrorDetails details) = DataFailure<T>;
}
