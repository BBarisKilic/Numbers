import 'package:dio/dio.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class NumberRepositoryImpl implements NumberRepository {
  final NumbersApiService _numbersApiService;

  const NumberRepositoryImpl({required NumbersApiService service})
      : _numbersApiService = service;

  @override
  Future<DataState<Number>> getNumber(NumberRequestParams params) async {
    try {
      final response = await _numbersApiService.getNumber(params: params);

      return DataSuccess(response.toEntity());
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<Number>> getRandomNumber() async {
    try {
      final response = await _numbersApiService.getRandomNumber();

      return DataSuccess(response.toEntity());
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
