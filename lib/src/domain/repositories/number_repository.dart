import '../../core/core.dart';
import '../domain.dart';

abstract class NumberRepository {
  Future<DataState<Number>> getNumber(NumberRequestParams params);
  Future<DataState<Number>> getRandomNumber();
}
