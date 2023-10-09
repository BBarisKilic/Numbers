import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/src/core/core.dart';

@immutable
sealed class DataState<T> {
  const DataState({this.data, this.details});

  final T? data;
  final ErrorDetails? details;
}

final class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

final class DataFailure<T> extends DataState<T> {
  const DataFailure(ErrorDetails details) : super(details: details);
}
