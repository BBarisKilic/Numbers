import '../../core/core.dart';
import '../domain.dart';

class GetNumberUseCase
    implements UseCase<DataState<Number>, NumberRequestParams> {
  final NumberRepository _numberRepository;

  const GetNumberUseCase({required NumberRepository repository})
      : _numberRepository = repository;

  @override
  Future<DataState<Number>> call({required NumberRequestParams params}) =>
      _numberRepository.getNumber(params);
}
