import '../abstracts/data_state.dart';

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}
