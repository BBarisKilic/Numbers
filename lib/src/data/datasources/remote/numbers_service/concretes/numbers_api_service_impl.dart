import 'dart:convert';
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

    if (response.statusCode != HttpStatus.ok) throw Exception();

    return NumberModel.fromJson(json.decode(response.data));
  }
}
