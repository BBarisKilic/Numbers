import '../../core/core.dart';

abstract class SharedPrefRepository {
  Future<DataState<String>> getString(SharedPrefStringRequestParams params);
  Future<DataState<void>> setString(SharedPrefSetStringParams params);
}
