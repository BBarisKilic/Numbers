import 'dart:io';

import 'package:dio/dio.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/data/data.dart';

class NumbersApiServiceImpl implements NumbersApiService {
  const NumbersApiServiceImpl({
    required Dio dio,
    required String baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String _baseUrl;

  @override
  Future<NumberModel> getNumber({required NumberRequestParams params}) async {
    final response = await _dio.get<String>('$_baseUrl/${params.number}');

    if (response.statusCode == HttpStatus.ok) {
      return NumberModel(info: response.data!);
    }

    throw DioError(
      requestOptions: response.requestOptions,
      error: response.statusMessage,
      response: response,
      type: DioErrorType.response,
    );
  }

  @override
  Future<NumberModel> getRandomNumber() async {
    final response = await _dio.get<String>('$_baseUrl/random');

    if (response.statusCode == HttpStatus.ok) {
      return NumberModel(info: response.data!);
    }

    throw DioError(
      requestOptions: response.requestOptions,
      error: response.statusMessage,
      response: response,
      type: DioErrorType.response,
    );
  }
}
