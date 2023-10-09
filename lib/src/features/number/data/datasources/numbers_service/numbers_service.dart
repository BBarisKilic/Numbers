import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

export 'dio_numbers_service.dart';
export 'numbers_service_exception.dart';

/// An abstract interface class that defines the base numbers service.
abstract class NumbersService {
  /// Gets the number.
  ///
  /// Throws a [GetNumberException] if an error occurs.
  Future<NumberDto> getNumber({required GetNumberParams params});

  /// Gets a random number.
  ///
  /// Throws a [GetRandomNumberException] if an error occurs.
  Future<NumberDto> getRandomNumber();
}
