import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/core.dart';
import '../../../../data.dart';

class NumbersApiServiceImpl implements NumbersApiService {
  final Dio _dio;
  final String _baseUrl;

  const NumbersApiServiceImpl({required Dio dio, required String baseUrl})
      : _dio = dio,
        _baseUrl = baseUrl;

  @override
  Future<NumberModel> getNumber({required NumberRequestParams params}) async {
    final response = await _dio.get('$_baseUrl/${params.number}');

    if (response.statusCode == HttpStatus.ok) {
      return NumberModel(info: response.data);
    }

    throw DioError(
      requestOptions: response.requestOptions,
      error: response.statusMessage,
      response: response.data,
      type: DioErrorType.response,
    );
  }

  @override
  Future<NumberModel> getRandomNumber() async {
    final response = await _dio.get('$_baseUrl/random');

    if (response.statusCode == HttpStatus.ok) {
      return NumberModel(info: response.data);
    }

    throw DioError(
      requestOptions: response.requestOptions,
      error: response.statusMessage,
      response: response.data,
      type: DioErrorType.response,
    );
  }
}
