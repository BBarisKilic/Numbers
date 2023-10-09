/// {@template theme_service_exception}
/// An exception that is thrown when a theme service fails.
/// {@endtemplate}
sealed class ThemeServiceException implements Exception {
  /// {@macro theme_service_exception}
  const ThemeServiceException(this.message, this.stackTrace);

  final String message;
  final String stackTrace;
}

/// {@template get_theme_exception}
/// An exception that is thrown when could not get the theme.
/// {@endtemplate}
final class GetThemeException extends ThemeServiceException {
  /// {@macro get_theme_exception}
  const GetThemeException(super.message, super.stackTrace);
}

/// {@template save_theme_exception}
/// An exception that is thrown when could not save the theme.
/// {@endtemplate}
final class SaveThemeException extends ThemeServiceException {
  /// {@macro save_theme_exception}
  const SaveThemeException(super.message, super.stackTrace);
}
