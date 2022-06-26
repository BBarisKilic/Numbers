import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/core.dart';
import '../../../../data.dart';

class SharedPrefServiceImpl implements SharedPrefService {
  final SharedPreferences _preferences;

  SharedPrefServiceImpl({required SharedPreferences preferences})
      : _preferences = preferences;

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
