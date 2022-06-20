import 'package:dio/dio.dart';

import '../../models/number_model.dart';

abstract class NumbersApiService {
  final Dio dio;
  final String baseUrl;

  const NumbersApiService(this.dio, {required this.baseUrl});

  Future<NumberModel> getNumber({required int number});
}
