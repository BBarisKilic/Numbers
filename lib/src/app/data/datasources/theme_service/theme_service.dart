import 'package:numbers/src/app/app.dart';
import 'package:numbers/src/core/core.dart';

export 'shared_pref_theme_service.dart';
export 'theme_service_exception.dart';

/// An abstract interface class that defines the base theme service.
abstract interface class ThemeService {
  /// Gets the theme.
  ///
  /// Throws a [GetThemeException] if an error occurs.
  Future<String> getTheme({required GetThemeParams params});

  /// Saves the theme.
  ///
  /// Throws a [SaveThemeException] if an error occurs.
  Future<void> saveTheme({required SaveThemeParams params});
}
