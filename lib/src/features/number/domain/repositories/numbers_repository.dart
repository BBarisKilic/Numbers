import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

abstract interface class NumbersRepository {
  Future<DataState<Number>> getNumber(GetNumberParams params);
  Future<DataState<Number>> getRandomNumber();
}
