import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/core.dart';
import '../../../../models/number_model.dart';
import '../abstracts/numbers_api_service.dart';

class NumbersApiServiceImpl implements NumbersApiService {
  final Dio _dio;
  final String _baseUrl;

  const NumbersApiServiceImpl(Dio dio, {required String baseUrl})
      : _dio = dio,
        _baseUrl = baseUrl;

  @override
  Future<NumberModel> getNumber({required NumberRequestParams params}) async {
    final response = await _dio.get('$_baseUrl/${params.number}');

    if (response.statusCode == HttpStatus.ok) {
      // return NumberModel.fromJson(json.decode(response.data));
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
