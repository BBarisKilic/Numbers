import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

class GetRandomNumberUseCase implements UseCase<DataState<Number>, NoParams> {
  const GetRandomNumberUseCase({required NumberRepository repository})
      : _numberRepository = repository;

  final NumberRepository _numberRepository;

  @override
  Future<DataState<Number>> call({required NoParams params}) =>
      _numberRepository.getRandomNumber();
}
