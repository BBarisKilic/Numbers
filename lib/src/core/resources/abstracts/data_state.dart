import 'package:equatable/equatable.dart';
import 'package:numbers/src/core/core.dart';

abstract class DataState<T> extends Equatable {
  const DataState({this.data, this.failure});
  final T? data;
  final Failure? failure;
}
