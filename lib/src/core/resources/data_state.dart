import 'package:equatable/equatable.dart';
import 'package:numbers/src/core/core.dart';

sealed class DataState<T> extends Equatable {
  const DataState({this.data, this.details});

  final T? data;
  final ErrorDetails? details;

  @override
  List<Object?> get props => [data, details];
}

final class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

final class DataFailure<T> extends DataState<T> {
  const DataFailure(ErrorDetails details) : super(details: details);
}
