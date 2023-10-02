import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';

class SharedPrefRepositoryImpl implements SharedPrefRepository {
  const SharedPrefRepositoryImpl({required SharedPrefService service})
      : _sharedPrefService = service;
  final SharedPrefService _sharedPrefService;

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
