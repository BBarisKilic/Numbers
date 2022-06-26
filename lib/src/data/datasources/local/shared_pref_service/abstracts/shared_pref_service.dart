import '../../../../../core/core.dart';

abstract class SharedPrefService {
  Future<String> getString({required SharedPrefStringRequestParams params});
  Future<void> setString({required SharedPrefSetStringParams params});
}
