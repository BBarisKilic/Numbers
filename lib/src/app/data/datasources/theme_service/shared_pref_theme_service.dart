import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SharedPrefThemeService implements ThemeService {
  SharedPrefThemeService({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  final SharedPreferences _preferences;

  @override
  Future<String> getTheme({required GetThemeParams params}) async {
    try {
      final value = _preferences.getString(params.key);

      if (value == null) throw Exception();

      return value;
    } catch (_, stackTrace) {
      throw GetThemeException(
        '[$SharedPrefThemeService] - Could not get the theme.',
        '$stackTrace',
      );
    }
  }

  @override
  Future<void> saveTheme({required SaveThemeParams params}) async {
    try {
      final isSuccess = await _preferences.setString(params.key, params.value);

      if (!isSuccess) throw Exception();
    } catch (_, stackTrace) {
      throw SaveThemeException(
        '[$SharedPrefThemeService] - Could not save the theme.',
        '$stackTrace',
      );
    }
  }
}
