import '../../core.dart';

abstract class DataState<T> {
  final T? data;
  final Failure? failure;

  const DataState({this.data, this.failure});
}
