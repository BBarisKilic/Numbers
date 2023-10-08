import 'package:numbers/src/core/core.dart';

abstract interface class ThemeRepository {
  Future<DataState<String>> getTheme(GetThemeParams params);
  Future<DataState<void>> saveTheme(SaveThemeParams params);
}
