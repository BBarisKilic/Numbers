final class ErrorDetails {
  const ErrorDetails({
    required this.message,
    required this.error,
    required this.stackTrace,
  });

  final String message;
  final String error;
  final String stackTrace;
}
