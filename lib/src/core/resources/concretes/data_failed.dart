import 'package:dio/dio.dart';

import '../abstracts/data_state.dart';

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}
