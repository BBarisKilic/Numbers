import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/data/data.dart';

abstract class NumbersApiService {
  Future<NumberModel> getNumber({required NumberRequestParams params});
  Future<NumberModel> getRandomNumber();
}
