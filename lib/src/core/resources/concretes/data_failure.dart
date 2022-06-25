import '../../core.dart';

class DataFailure<T> extends DataState<T> {
  const DataFailure(Failure failure) : super(failure: failure);
}
