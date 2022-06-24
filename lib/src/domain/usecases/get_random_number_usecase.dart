import '../../core/core.dart';
import '../domain.dart';

class GetRandomNumberUseCase implements UseCase<DataState<Number>, NoParams> {
  final NumberRepository _numberRepository;

  const GetRandomNumberUseCase({required NumberRepository repository})
      : _numberRepository = repository;

  @override
  Future<DataState<Number>> call({required NoParams params}) =>
      _numberRepository.getRandomNumber();
}
