import 'dart:io';

import 'package:dio/dio.dart';
import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

class DioNumbersService implements NumbersService {
  const DioNumbersService({
    required Dio dio,
    required String baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String _baseUrl;

  @override
  Future<NumberDto> getNumber({required GetNumberParams params}) async {
    try {
      final response = await _dio.get<String>('$_baseUrl/${params.number}');

      if (response.statusCode != HttpStatus.ok) {
        throw DioException(
          requestOptions: response.requestOptions,
          error: response.statusMessage,
          response: response,
        );
      }

      return NumberDto(info: response.data!);
    } catch (error, stackTrace) {
      throw GetNumberException(
        '[$DioNumbersService] - Could not get the number.',
        '$stackTrace',
      );
    }
  }

  @override
  Future<NumberDto> getRandomNumber() async {
    try {
      final response = await _dio.get<String>('$_baseUrl/random');

      if (response.statusCode != HttpStatus.ok) {
        throw DioException(
          requestOptions: response.requestOptions,
          error: response.statusMessage,
          response: response,
        );
      }

      return NumberDto(info: response.data!);
    } catch (error, stackTrace) {
      throw GetRandomNumberException(
        '[$DioNumbersService] - Could not get the random number.',
        '$stackTrace',
      );
    }
  }
}
