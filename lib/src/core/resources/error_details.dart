final class ErrorDetails {
  const ErrorDetails({
    required this.error,
    required this.message,
    required this.stackTrace,
  });

  final String error;
  final String message;
  final String stackTrace;
}
