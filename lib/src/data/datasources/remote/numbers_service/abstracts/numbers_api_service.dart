import '../../../../../core/core.dart';
import '../../../../data.dart';

abstract class NumbersApiService {
  Future<NumberModel> getNumber({required NumberRequestParams params});
  Future<NumberModel> getRandomNumber();
}
