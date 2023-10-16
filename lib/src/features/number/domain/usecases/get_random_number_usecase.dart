import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/features/number/number.dart';

final class GetRandomNumberUseCase
    implements UseCase<DataState<Number>, Params> {
  const GetRandomNumberUseCase({
    required NumbersRepository repository,
  }) : _numbersRepository = repository;

  final NumbersRepository _numbersRepository;

  @override
  Future<DataState<Number>> call({Params params = const Params()}) =>
      _numbersRepository.getRandomNumber();
}
