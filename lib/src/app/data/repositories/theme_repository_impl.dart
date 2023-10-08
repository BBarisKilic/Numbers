import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';

final class ThemeRepositoryImpl implements ThemeRepository {
  const ThemeRepositoryImpl({
    required ThemeService service,
  }) : _themeService = service;

  final ThemeService _themeService;

  @override
  Future<DataState<String>> getTheme(GetThemeParams params) async {
    try {
      final response = await _themeService.getTheme(params: params);

      return DataSuccess(response);
    } on GetThemeException catch (error) {
      return DataFailure(
        ErrorDetails(
          error: '$error',
          message: error.message,
          stackTrace: error.stackTrace,
        ),
      );
    }
  }

  @override
  Future<DataState<void>> saveTheme(SaveThemeParams params) async {
    try {
      final response = await _themeService.saveTheme(params: params);

      return DataSuccess(response);
    } on SaveThemeException catch (error) {
      return DataFailure(
        ErrorDetails(
          error: '$error',
          message: error.message,
          stackTrace: error.stackTrace,
        ),
      );
    }
  }
}
