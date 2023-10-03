import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

class GetRandomNumberUseCase implements UseCase<DataState<Number>, Params> {
  const GetRandomNumberUseCase({
    required NumberRepository repository,
  }) : _numberRepository = repository;

  final NumberRepository _numberRepository;

  @override
  Future<DataState<Number>> call({Params params = const Params()}) =>
      _numberRepository.getRandomNumber();
}
