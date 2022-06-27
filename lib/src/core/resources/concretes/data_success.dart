import '../../core.dart';

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);

  @override
  List<Object?> get props => [data];
}
