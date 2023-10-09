import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

final class NumberRepositoryImpl implements NumberRepository {
  const NumberRepositoryImpl({
    required NumbersService service,
  }) : _numbersService = service;

  final NumbersService _numbersService;

  @override
  Future<DataState<Number>> getNumber(GetNumberParams params) async {
    try {
      final response = await _numbersService.getNumber(params: params);

      return DataSuccess(Number(info: response.info));
    } on GetNumberException catch (error) {
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
  Future<DataState<Number>> getRandomNumber() async {
    try {
      final response = await _numbersService.getRandomNumber();

      return DataSuccess(Number(info: response.info));
    } on GetRandomNumberException catch (error) {
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
