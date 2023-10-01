import 'package:numbers/src/core/core.dart';
import 'package:numbers/src/domain/domain.dart';

class GetNumberUseCase
    implements UseCase<DataState<Number>, NumberRequestParams> {
  const GetNumberUseCase({
    required NumberRepository repository,
  }) : _numberRepository = repository;

  final NumberRepository _numberRepository;

  @override
  Future<DataState<Number>> call({required NumberRequestParams params}) =>
      _numberRepository.getNumber(params);
}
