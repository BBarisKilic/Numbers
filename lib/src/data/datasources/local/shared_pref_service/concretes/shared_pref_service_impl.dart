import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServiceImpl implements SharedPrefService {
  SharedPrefServiceImpl({required SharedPreferences preferences})
      : _preferences = preferences;
  final SharedPreferences _preferences;

  @override
  Future<String> getString({
    required SharedPrefStringRequestParams params,
  }) async {
    final value = _preferences.getString(params.key);

    if (value == null) throw Exception(kSharedPrefNoValueException);

    return value;
  }

  @override
  Future<void> setString({
    required SharedPrefSetStringParams params,
  }) async {
    final isSuccess = await _preferences.setString(params.key, params.value);

    if (!isSuccess) throw Exception(kSharedPrefCouldNotSetValue);
  }
}
