/// {@template numbers_service_exception}
/// An exception that is thrown when the numbers service fails.
/// {@endtemplate}
sealed class NumbersServiceException implements Exception {
  /// {@macro numbers_service_exception}
  const NumbersServiceException(this.message, this.stackTrace);

  final String message;
  final String stackTrace;
}

/// {@template get_number_exception}
/// An exception that is thrown when could not get the number.
/// {@endtemplate}
final class GetNumberException extends NumbersServiceException {
  /// {@macro get_number_exception}
  const GetNumberException(super.message, super.stackTrace);
}

/// {@template get_random_number_exception}
/// An exception that is thrown when could not get the random number.
/// {@endtemplate}
final class GetRandomNumberException extends NumbersServiceException {
  /// {@macro get_random_number_exception}
  const GetRandomNumberException(super.message, super.stackTrace);
}
