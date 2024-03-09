import 'package:equatable/equatable.dart';

final class ErrorDetails extends Equatable {
  const ErrorDetails({
    required this.error,
    required this.message,
    required this.stackTrace,
  });

  final String error;
  final String message;
  final String stackTrace;

  @override
  List<Object?> get props => [error, message, stackTrace];
}
