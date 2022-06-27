import '../../core.dart';

class DataFailure<T> extends DataState<T> {
  const DataFailure(Failure failure) : super(failure: failure);

  @override
  List<Object?> get props => [failure];
}
