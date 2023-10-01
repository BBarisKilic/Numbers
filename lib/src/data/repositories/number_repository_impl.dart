import 'package:dio/dio.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/data/data.dart';
import 'package:numbers/src/domain/domain.dart';

class NumberRepositoryImpl implements NumberRepository {
  const NumberRepositoryImpl({required NumbersApiService service})
      : _numbersApiService = service;
  final NumbersApiService _numbersApiService;

  @override
  Future<DataState<Number>> getNumber(NumberRequestParams params) async {
    try {
      final response = await _numbersApiService.getNumber(params: params);

      return DataSuccess(response.toEntity());
    } on DioException catch (e) {
      return DataFailure(Failure(title: '${e.type}', message: e.message ?? ''));
    }
  }

  @override
  Future<DataState<Number>> getRandomNumber() async {
    try {
      final response = await _numbersApiService.getRandomNumber();

      return DataSuccess(response.toEntity());
    } on DioException catch (e) {
      return DataFailure(Failure(title: '${e.type}', message: e.message ?? ''));
    }
  }
}
