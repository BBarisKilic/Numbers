import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class SharedPrefRepositoryImpl implements SharedPrefRepository {
  final SharedPrefService _sharedPrefService;

  const SharedPrefRepositoryImpl({required SharedPrefService service})
      : _sharedPrefService = service;

  @override
  Future<DataState<String>> getString(
    SharedPrefStringRequestParams params,
  ) async {
    try {
      final response = await _sharedPrefService.getString(params: params);

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(
        Failure(title: '$SharedPrefRepositoryImpl', message: '$e'),
      );
    }
  }

  @override
  Future<DataState<void>> setString(SharedPrefSetStringParams params) async {
    try {
      final response = await _sharedPrefService.setString(params: params);

      return DataSuccess(response);
    } catch (e) {
      return DataFailure(
        Failure(title: '$SharedPrefRepositoryImpl', message: '$e'),
      );
    }
  }
}
