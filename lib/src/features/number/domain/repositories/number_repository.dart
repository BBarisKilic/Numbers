import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

abstract class NumberRepository {
  Future<DataState<Number>> getNumber(NumberRequestParams params);
  Future<DataState<Number>> getRandomNumber();
}
