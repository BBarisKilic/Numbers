import 'package:equatable/equatable.dart';

import '../../core.dart';

abstract class DataState<T> extends Equatable {
  final T? data;
  final Failure? failure;

  const DataState({this.data, this.failure});
}
